
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LARGE_FLUSH ;
 int PIPESAFE_FLUSH ;

__attribute__((used)) static int next_flush(int stateless_rpc, int count)
{
 if (stateless_rpc) {
  if (count < LARGE_FLUSH)
   count <<= 1;
  else
   count = count * 11 / 10;
 } else {
  if (count < PIPESAFE_FLUSH)
   count <<= 1;
  else
   count += PIPESAFE_FLUSH;
 }
 return count;
}
