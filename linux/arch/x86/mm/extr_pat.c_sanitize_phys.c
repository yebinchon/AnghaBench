
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CONFIG_X86_64 ;
 scalar_t__ IS_ENABLED (int ) ;
 int __PHYSICAL_MASK ;

__attribute__((used)) static u64 sanitize_phys(u64 address)
{
 if (IS_ENABLED(CONFIG_X86_64))
  return address & __PHYSICAL_MASK;
 return address;
}
