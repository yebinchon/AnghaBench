
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct pending_operation {int type; int st; void* newpath; void* oldpath; } ;
typedef enum pending_operation_tp { ____Placeholder_pending_operation_tp } pending_operation_tp ;


 int memcpy (int *,struct stat*,int) ;
 struct pending_operation* zmalloc0 (int) ;
 void* zstrdup (char const* const) ;

struct pending_operation *pending_operation_create (enum pending_operation_tp type, const char *const oldpath, const char *const newpath, struct stat *st) {
  struct pending_operation *P = zmalloc0 (sizeof (struct pending_operation));
  P->type = type;
  if (oldpath) {
    P->oldpath = zstrdup (oldpath);
  }
  if (newpath) {
    P->newpath = zstrdup (newpath);
  }
  if (st) {
    memcpy (&P->st, st, sizeof (struct stat));
  }
  return P;
}
