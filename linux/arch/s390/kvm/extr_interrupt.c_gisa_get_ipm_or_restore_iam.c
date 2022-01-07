
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int mask; } ;
struct kvm_s390_gisa_interrupt {TYPE_1__ alert; TYPE_3__* origin; } ;
struct TYPE_5__ {int * word; } ;
struct TYPE_6__ {TYPE_2__ u64; } ;


 int READ_ONCE (int ) ;
 int cmpxchg (int *,int,int) ;

__attribute__((used)) static inline u8 gisa_get_ipm_or_restore_iam(struct kvm_s390_gisa_interrupt *gi)
{
 u8 pending_mask, alert_mask;
 u64 word, _word;

 do {
  word = READ_ONCE(gi->origin->u64.word[0]);
  alert_mask = READ_ONCE(gi->alert.mask);
  pending_mask = (u8)(word >> 24) & alert_mask;
  if (pending_mask)
   return pending_mask;
  _word = (word & ~0xffUL) | alert_mask;
 } while (cmpxchg(&gi->origin->u64.word[0], word, _word) != word);

 return 0;
}
