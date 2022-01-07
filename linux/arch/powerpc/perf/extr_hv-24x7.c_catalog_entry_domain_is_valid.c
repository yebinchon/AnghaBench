
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int domain_is_valid (unsigned int) ;
 int interface_version ;
 int is_physical_domain (unsigned int) ;

__attribute__((used)) static bool catalog_entry_domain_is_valid(unsigned domain)
{

 if (interface_version == 1)
  return is_physical_domain(domain);
 else
  return domain_is_valid(domain);
}
