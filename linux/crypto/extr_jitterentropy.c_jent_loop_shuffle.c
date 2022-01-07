
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {unsigned int data; } ;
typedef unsigned int __u64 ;


 unsigned int DATA_SIZE_BITS ;
 int jent_get_nstime (unsigned int*) ;

__attribute__((used)) static __u64 jent_loop_shuffle(struct rand_data *ec,
          unsigned int bits, unsigned int min)
{
 __u64 time = 0;
 __u64 shuffle = 0;
 unsigned int i = 0;
 unsigned int mask = (1<<bits) - 1;

 jent_get_nstime(&time);




 if (ec)
  time ^= ec->data;




 for (i = 0; ((DATA_SIZE_BITS + bits - 1) / bits) > i; i++) {
  shuffle ^= time & mask;
  time = time >> bits;
 }





 return (shuffle + (1<<min));
}
