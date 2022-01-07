
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 int ENOENT ;
 scalar_t__* msg_sizes ;

__attribute__((used)) static inline int carm_lookup_bucket(u32 msg_size)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(msg_sizes); i++)
  if (msg_size <= msg_sizes[i])
   return i;

 return -ENOENT;
}
