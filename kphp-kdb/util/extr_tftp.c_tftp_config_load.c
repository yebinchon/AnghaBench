
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int data; int filename; } ;
typedef TYPE_1__ tftp_file_t ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ ssize_t ;
typedef int s ;
typedef int FILE ;


 int O_RDONLY ;
 scalar_t__ TFTP_MAX_FILE_SIZE ;
 int assert (int) ;
 int close (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 TYPE_1__* get_file_f (char*,int) ;
 int kprintf (char*,...) ;
 int open (char*,int ) ;
 scalar_t__ read (int,int ,scalar_t__) ;
 int strlen (char*) ;
 char* strtok_r (char*,char*,char**) ;
 int tot_files ;
 int zmalloc (scalar_t__) ;
 int zstrdup (char*) ;

int tftp_config_load (const char *config_filename) {
  char s[16384];
  FILE *f = fopen (config_filename, "r");
  if (f == ((void*)0)) {
    kprintf ("fail to open config file '%s'. %m\n", config_filename);
    return -1;
  }
  int line = 0, res = 0, fd = -1;
  while (fgets (s, sizeof (s), f) != ((void*)0)) {
    line++;
    int l = strlen (s);
    if (l >= sizeof (s) - 1) {
      kprintf ("config line %d is too long\n", line);
      res--;
      break;
    }
    char *ptr;
    char *alias = strtok_r (s, "\t\n ", &ptr);
    if (alias == ((void*)0)) {
      continue;
    }
    char *filename = strtok_r (((void*)0), "\t\n ", &ptr);
    if (filename == ((void*)0)) {
      kprintf ("at the %d line of config filename for alias '%s' wasn't given.\n", line, alias);
      res--;
      break;
    }
    int old_tot_files = tot_files;
    tftp_file_t *F = get_file_f (alias, 1);
    if (old_tot_files == tot_files) {
      kprintf ("%d line of config file contains duplicate record for alias '%s'.\n", line, alias);
      res--;
      break;
    }
    int fd = open (filename, O_RDONLY);
    if (fd < 0) {
      kprintf ("fail to open file '%s' for alias '%s' (config line: %d). %m\n", filename, alias, line);
      res--;
      break;
    }
    struct stat st;
    if (fstat (fd, &st) < 0) {
      kprintf ("fstat for file '%s' for alias '%s' failed (config line: %d). %m\n", filename, alias, line);
      res--;
      break;
    }
    F->size = st.st_size;
    if (F->size > TFTP_MAX_FILE_SIZE) {
      kprintf ("file '%s' for alias '%s' is too big (more than %lld bytes) (config line: %d). %m\n", filename, alias, F->size, line);
      res--;
      break;
    }
    F->data = zmalloc (F->size);
    F->filename = zstrdup (filename);
    ssize_t bytes_read = read (fd, F->data, F->size);
    if (bytes_read != F->size) {
      if (bytes_read < 0) {
        kprintf ("read from file '%s' for alias '%s' failed. %m\n", filename, alias);
        res--;
        break;
      } else {
        kprintf ("read only %lld bytes of expected %lld bytes from file '%s' for alias '%s'.\n", (long long) bytes_read, F->size, filename, alias);
        res--;
        break;
      }
    }
    assert (!close (fd));
    fd = -1;
  }

  if (fd >= 0) {
    close (fd);
    fd = -1;
  }

  if (f) {
    fclose (f);
  }
  return res;
}
