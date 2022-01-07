
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ strong; scalar_t__ weak; int desc; int debug_id; } ;
struct binder_ref {TYPE_2__ data; TYPE_1__* proc; int node; } ;
struct TYPE_3__ {int pid; } ;


 int binder_cleanup_ref_olocked (struct binder_ref*) ;
 int binder_dec_node (int ,int,int) ;
 int binder_user_error (char*,int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool binder_dec_ref_olocked(struct binder_ref *ref, int strong)
{
 if (strong) {
  if (ref->data.strong == 0) {
   binder_user_error("%d invalid dec strong, ref %d desc %d s %d w %d\n",
       ref->proc->pid, ref->data.debug_id,
       ref->data.desc, ref->data.strong,
       ref->data.weak);
   return 0;
  }
  ref->data.strong--;
  if (ref->data.strong == 0)
   binder_dec_node(ref->node, strong, 1);
 } else {
  if (ref->data.weak == 0) {
   binder_user_error("%d invalid dec weak, ref %d desc %d s %d w %d\n",
       ref->proc->pid, ref->data.debug_id,
       ref->data.desc, ref->data.strong,
       ref->data.weak);
   return 0;
  }
  ref->data.weak--;
 }
 if (ref->data.strong == 0 && ref->data.weak == 0) {
  binder_cleanup_ref_olocked(ref);
  return 1;
 }
 return 0;
}
