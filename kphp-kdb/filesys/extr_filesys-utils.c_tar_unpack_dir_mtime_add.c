
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tar_unpack_dir_mtime_entry** e; } ;
typedef TYPE_1__ tar_unpack_dir_mtime_t ;
struct tar_unpack_dir_mtime_entry {struct tar_unpack_dir_mtime_entry* next; int dirname; int st; } ;
struct stat {int dummy; } ;


 int MAX_DIR_DEPTH ;
 int memcpy (int *,struct stat*,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 struct tar_unpack_dir_mtime_entry* zmalloc (scalar_t__) ;

__attribute__((used)) static void tar_unpack_dir_mtime_add (tar_unpack_dir_mtime_t *M, char *dir, struct stat *st) {
  int k = 0;
  char *s;
  for (s = dir; *s; s++) {
    if (*s == '/') {
      k++;
    }
  }
  if (k < MAX_DIR_DEPTH) {
    struct tar_unpack_dir_mtime_entry *E = zmalloc (sizeof (struct tar_unpack_dir_mtime_entry) + strlen (dir) + 1);
    memcpy (&E->st, st, sizeof (struct stat));
    strcpy (E->dirname, dir);
    E->next = M->e[k];
    M->e[k] = E;
  }
}
