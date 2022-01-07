
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int AOE_PARTITIONS ;
 int BUG_ON (int) ;
 int N_DEVS ;
 int clear_bit (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_bit (int ,int ) ;
 int used_minors ;
 int used_minors_lock ;

__attribute__((used)) static void
minor_free(ulong minor)
{
 ulong flags;

 minor /= AOE_PARTITIONS;
 BUG_ON(minor >= N_DEVS);

 spin_lock_irqsave(&used_minors_lock, flags);
 BUG_ON(!test_bit(minor, used_minors));
 clear_bit(minor, used_minors);
 spin_unlock_irqrestore(&used_minors_lock, flags);
}
