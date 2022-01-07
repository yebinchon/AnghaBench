
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {unsigned char* mem; unsigned int memblocksize; unsigned int memblocks; scalar_t__ memaccessloops; int memlocation; } ;
typedef scalar_t__ __u64 ;


 int MAX_ACC_LOOP_BIT ;
 int MIN_ACC_LOOP_BIT ;
 scalar_t__ jent_loop_shuffle (struct rand_data*,int ,int ) ;

__attribute__((used)) static unsigned int jent_memaccess(struct rand_data *ec, __u64 loop_cnt)
{
 unsigned int wrap = 0;
 __u64 i = 0;


 __u64 acc_loop_cnt =
  jent_loop_shuffle(ec, 7, 0);

 if (((void*)0) == ec || ((void*)0) == ec->mem)
  return 0;
 wrap = ec->memblocksize * ec->memblocks;





 if (loop_cnt)
  acc_loop_cnt = loop_cnt;

 for (i = 0; i < (ec->memaccessloops + acc_loop_cnt); i++) {
  unsigned char *tmpval = ec->mem + ec->memlocation;





  *tmpval = (*tmpval + 1) & 0xff;





  ec->memlocation = ec->memlocation + ec->memblocksize - 1;
  ec->memlocation = ec->memlocation % wrap;
 }
 return i;
}
