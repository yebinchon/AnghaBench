
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_pending_operation {int type; int oldpath_set; int newpath_set; int st; int newpath; int oldpath; } ;
struct stat {int dummy; } ;
typedef enum pending_operation_tp { ____Placeholder_pending_operation_tp } pending_operation_tp ;


 scalar_t__ PATH_MAX ;
 int assert (int) ;
 int memcpy (int *,struct stat*,int) ;
 int strcpy (int ,char const* const) ;
 scalar_t__ strlen (char const* const) ;

void pending_operation_fill (struct static_pending_operation *P, enum pending_operation_tp type, const char *const oldpath, const char *const newpath, struct stat *st) {
  P->type = type;
  P->oldpath_set = P->newpath_set = 0;
  if (oldpath) {
    assert (strlen (oldpath) < PATH_MAX);
    strcpy (P->oldpath, oldpath);
    P->oldpath_set = 1;
  }
  if (newpath) {
    assert (strlen (newpath) < PATH_MAX);
    strcpy (P->newpath, newpath);
    P->newpath_set = 1;
  }
  if (st) {
    memcpy (&P->st, st, sizeof (struct stat));
  }
}
