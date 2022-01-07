
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (unsigned int) ;
 int domain_is_valid (unsigned int) ;

__attribute__((used)) static const char *domain_name(unsigned domain)
{
 if (!domain_is_valid(domain))
  return ((void*)0);

 switch (domain) {
 case 133: return "Physical Chip";
 case 132: return "Physical Core";
 case 130: return "VCPU Home Core";
 case 131: return "VCPU Home Chip";
 case 129: return "VCPU Home Node";
 case 128: return "VCPU Remote Node";
 }

 WARN_ON_ONCE(domain);
 return ((void*)0);
}
