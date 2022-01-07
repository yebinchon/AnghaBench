
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {void* last_delta; void* last_delta2; } ;
typedef void* __u64 ;
typedef void* __s64 ;



__attribute__((used)) static int jent_stuck(struct rand_data *ec, __u64 current_delta)
{
 __s64 delta2 = ec->last_delta - current_delta;
 __s64 delta3 = delta2 - ec->last_delta2;

 ec->last_delta = current_delta;
 ec->last_delta2 = delta2;

 if (!current_delta || !delta2 || !delta3)
  return 1;

 return 0;
}
