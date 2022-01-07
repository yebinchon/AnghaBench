
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ARM64_NCAPS ;
 scalar_t__ WARN_ON (int) ;
 int applied_alternatives ;
 int test_bit (scalar_t__,int ) ;

bool alternative_is_applied(u16 cpufeature)
{
 if (WARN_ON(cpufeature >= ARM64_NCAPS))
  return 0;

 return test_bit(cpufeature, applied_alternatives);
}
