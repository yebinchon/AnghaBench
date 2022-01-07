
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {scalar_t__ data; } ;
typedef scalar_t__ __u64 ;


 unsigned int DATA_SIZE_BITS ;
 int MAX_FOLD_LOOP_BIT ;
 int MIN_FOLD_LOOP_BIT ;
 scalar_t__ jent_loop_shuffle (struct rand_data*,int ,int ) ;

__attribute__((used)) static __u64 jent_lfsr_time(struct rand_data *ec, __u64 time, __u64 loop_cnt)
{
 unsigned int i;
 __u64 j = 0;
 __u64 new = 0;


 __u64 fold_loop_cnt =
  jent_loop_shuffle(ec, 4, 0);





 if (loop_cnt)
  fold_loop_cnt = loop_cnt;
 for (j = 0; j < fold_loop_cnt; j++) {
  new = ec->data;
  for (i = 1; (DATA_SIZE_BITS) >= i; i++) {
   __u64 tmp = time << (DATA_SIZE_BITS - i);

   tmp = tmp >> (DATA_SIZE_BITS - 1);
   tmp ^= ((new >> 63) & 1);
   tmp ^= ((new >> 60) & 1);
   tmp ^= ((new >> 55) & 1);
   tmp ^= ((new >> 30) & 1);
   tmp ^= ((new >> 27) & 1);
   tmp ^= ((new >> 22) & 1);
   new <<= 1;
   new ^= tmp;
  }
 }
 ec->data = new;

 return fold_loop_cnt;
}
