
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int * word; } ;
struct kvm_s390_gisa {TYPE_1__ u64; } ;


 int READ_ONCE (int ) ;
 int cmpxchg (int *,int,int) ;

__attribute__((used)) static inline void gisa_clear_ipm(struct kvm_s390_gisa *gisa)
{
 u64 word, _word;

 do {
  word = READ_ONCE(gisa->u64.word[0]);
  _word = word & ~(0xffUL << 24);
 } while (cmpxchg(&gisa->u64.word[0], word, _word) != word);
}
