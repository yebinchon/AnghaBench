
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {char const* d_name; } ;
struct TYPE_5__ {struct TYPE_5__* next; int filename; int st; } ;
typedef TYPE_1__ file_t ;
typedef int dyn_mark_t ;
typedef int DIR ;
typedef int A ;


 int PATH_MAX ;
 int assert (int ) ;
 int closedir (int *) ;
 int cmp_file ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int kprintf (char*,char const*) ;
 scalar_t__ lstat (char*,int *) ;
 int * opendir (char const*) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 int vkprintf (int,char*,char const*,...) ;
 int zfree (TYPE_1__*,int) ;
 void* zmalloc (int) ;
 int zstrdup (char const*) ;

int getdir (const char *dirname, file_t **R, int sort, int hidden) {
  *R = ((void*)0);
  char path[PATH_MAX];
  int l = snprintf (path, PATH_MAX, "%s/", dirname);
  if (l >= PATH_MAX - 1) { return 0; }
  int max_filename_length = PATH_MAX - 1 - l;
  int n = 0;
  file_t *head = ((void*)0), *p;
  DIR *D = opendir (dirname);
  if (D == ((void*)0)) {
    vkprintf (1, "opendir (%s) returns NULL.\n", dirname);
    return 0;
  }
  while (1) {
    errno = 0;
    struct dirent *entry = readdir (D);
    if (entry == ((void*)0)) {
      if (errno) {
        kprintf ("getdir (%s) failed. %m\n", dirname);
        exit (1);
      }
      break;
    }
    if (!strcmp (entry->d_name, ".") || !strcmp (entry->d_name, "..")) {
      continue;
    }

    if (!hidden && !strncmp (entry->d_name, ".", 1)) {
      vkprintf (1, "Skip %s in %s.\n", entry->d_name, dirname);
      continue;
    }

    if (strlen (entry->d_name) > max_filename_length) {
      vkprintf (1, "Skipping too long filename (%s/%s).\n", dirname, entry->d_name);
      continue;
    }

    strcpy (path + l, entry->d_name);
    p = zmalloc (sizeof (file_t));
    if (lstat (path, &p->st)) {
      kprintf ("lstat (%s) fail. %m\n", path);
      zfree (p, sizeof (file_t));
      continue;
    }
    p->filename = zstrdup (entry->d_name);
    p->next = head;
    head = p;
    n++;
  }
  closedir (D);
  if (!sort) {
    *R = head;
  } else if (n) {
    int i;
    dyn_mark_t s;
    dyn_mark (s);
    file_t **A = zmalloc (n * sizeof (file_t *));
    p = head;
    for (i = n - 1; i >= 0; i--) {
      A[i] = p;
      p = p->next;
    }
    assert (p == ((void*)0));
    qsort (A, n, sizeof (A[0]), cmp_file);
    A[n-1]->next = ((void*)0);
    for (i = 0; i < n - 1; i++) {
      A[i]->next = A[i+1];
    }
    *R = A[0];
    dyn_release (s);
  }
  return n;
}
