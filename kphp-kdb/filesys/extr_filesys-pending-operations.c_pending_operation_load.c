
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_pending_operation {int st; int newpath; scalar_t__ newpath_set; int oldpath; scalar_t__ oldpath_set; int type; } ;
struct stat {int dummy; } ;
struct pending_operation {int st; void* newpath; void* oldpath; int type; } ;


 int memcpy (int *,int *,int) ;
 struct pending_operation* zmalloc0 (int) ;
 void* zstrdup (int ) ;

struct pending_operation *pending_operation_load (struct static_pending_operation *Q) {
  struct pending_operation *P = zmalloc0 (sizeof (struct pending_operation));
  P->type = Q->type;
  if (Q->oldpath_set) {
    P->oldpath = zstrdup (Q->oldpath);
  }
  if (Q->newpath_set) {
    P->newpath = zstrdup (Q->newpath);
  }
  memcpy (&P->st, &Q->st, sizeof (struct stat));
  return P;
}
