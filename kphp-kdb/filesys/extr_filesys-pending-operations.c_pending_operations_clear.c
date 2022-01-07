
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_operation {struct pending_operation* newpath; struct pending_operation* oldpath; struct pending_operation* next; } ;


 struct pending_operation* pol_head ;
 int * pol_tail ;
 int strlen (struct pending_operation*) ;
 int zfree (struct pending_operation*,int) ;

__attribute__((used)) static void pending_operations_clear (void) {
  struct pending_operation *P = pol_head, *W;
  for (P = pol_head; P != ((void*)0); P = W) {
    W = P->next;
    if (P->oldpath) { zfree (P->oldpath, strlen (P->oldpath) + 1); }
    if (P->newpath) { zfree (P->newpath, strlen (P->newpath) + 1); }
    zfree (P, sizeof (*P));
  }
  pol_head = pol_tail = ((void*)0);
}
