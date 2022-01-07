
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {char const* filename; struct stat st; struct TYPE_4__* next; } ;
typedef TYPE_1__ file_t ;


 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int free_filelist (TYPE_1__*) ;
 int getdir (char const*,TYPE_1__**,int ,int) ;
 scalar_t__ rmdir (char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlink (char const*) ;
 int vkprintf (int,char*,char const*) ;

__attribute__((used)) static int rec_delete_file (const char *path, struct stat *S) {
  char a[PATH_MAX];
  if (S_ISLNK (S->st_mode)) {
    if (unlink (path)) {
      vkprintf (1, "unlink (%s) failed. %m\n", path);
      return -5;
    }
  } else if (S_ISDIR (S->st_mode)) {
    int l = strlen (path);
    file_t *px, *p;
    int n = getdir (path, &px, 0, 1);
    if (n < 0) {
      return -2;
    }
    for (p = px; p != ((void*)0); p = p->next) {
      int m = l + 2 + strlen (p->filename);
      if (PATH_MAX < m) {
        return -6;
      }
      sprintf (a, "%s/%s", path, p->filename);
      if (rec_delete_file (a, &p->st) < 0) {
        return -3;
      }
    }
    free_filelist (px);
    if (rmdir (path)) {
      vkprintf (1, "rmdir (%s) failed. %m\n", path);
      return -7;
    }
  } else {
    if (unlink (path)) {
      return -4;
    }
  }
  return 0;
}
