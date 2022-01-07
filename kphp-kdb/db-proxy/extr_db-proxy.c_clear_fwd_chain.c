
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwd_entry {int flags; int target; struct fwd_entry* fwd_next; } ;


 int FE_HOSTNAME ;
 int destroy_target (int ) ;
 int zfree (struct fwd_entry*,int) ;

void clear_fwd_chain (struct fwd_entry *FE) {
  while (FE) {
    struct fwd_entry *FN = FE->fwd_next;
    if (FE->flags & FE_HOSTNAME) {
      destroy_target (FE->target);
    }
    zfree (FE, sizeof (struct fwd_entry));
    FE = FN;
  }
}
