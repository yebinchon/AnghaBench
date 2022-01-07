
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time ;
struct TYPE_3__ {int lock; } ;


 int _RET_IP_ ;
 int _mix_pool_bytes (TYPE_1__*,unsigned long*,int) ;
 int crng_ready () ;
 int crng_slow_load (void const*,unsigned int) ;
 TYPE_1__ input_pool ;
 unsigned long jiffies ;
 unsigned long random_get_entropy () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_add_device_randomness (unsigned int,int ) ;

void add_device_randomness(const void *buf, unsigned int size)
{
 unsigned long time = random_get_entropy() ^ jiffies;
 unsigned long flags;

 if (!crng_ready() && size)
  crng_slow_load(buf, size);

 trace_add_device_randomness(size, _RET_IP_);
 spin_lock_irqsave(&input_pool.lock, flags);
 _mix_pool_bytes(&input_pool, buf, size);
 _mix_pool_bytes(&input_pool, &time, sizeof(time));
 spin_unlock_irqrestore(&input_pool.lock, flags);
}
