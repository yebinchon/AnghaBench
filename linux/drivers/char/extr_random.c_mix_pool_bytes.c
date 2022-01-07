
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entropy_store {int lock; int name; } ;


 int _RET_IP_ ;
 int _mix_pool_bytes (struct entropy_store*,void const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_mix_pool_bytes (int ,int,int ) ;

__attribute__((used)) static void mix_pool_bytes(struct entropy_store *r, const void *in,
      int nbytes)
{
 unsigned long flags;

 trace_mix_pool_bytes(r->name, nbytes, _RET_IP_);
 spin_lock_irqsave(&r->lock, flags);
 _mix_pool_bytes(r, in, nbytes);
 spin_unlock_irqrestore(&r->lock, flags);
}
