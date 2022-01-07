
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int file_t ;


 int S_ISDIR (int ) ;
 int exit (int) ;
 int free_filelist (int *) ;
 int getdir (char const* const,int **,int ,int) ;
 int kprintf (char*,char const* const,...) ;
 scalar_t__ stat (char const* const,struct stat*) ;
 int vkprintf (int,char*,char const* const) ;

__attribute__((used)) static int test_dir_exist_and_empty (const char *const path, struct stat *b) {
  if (stat (path, b) || !S_ISDIR (b->st_mode)) {
    kprintf ("Directory %s doesn't exist\n", path);
    exit (1);
  }

  file_t *px;
  int n = getdir (path, &px, 0, 1);
  free_filelist (px);
  if (n < 0) {
    kprintf ("getdir (%s) returns error code %d.\n", path, n);
    exit (1);
  }
  if (n > 0) {
    vkprintf (1, "%s isn't empty directory!\n", path);
    return 0;
  }
  return 1;
}
