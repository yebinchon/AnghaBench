
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_warn_ratelimited (char*) ;

__attribute__((used)) static void warn_if_saturated(u32 count)
{
 if (count != 0xffffffff)
  return;

 pr_warn_ratelimited("L2X0 counter saturated. Poll period too long\n");
}
