
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipmi_addr_src { ____Placeholder_ipmi_addr_src } ipmi_addr_src ;


 int SI_LAST ;
 char const** addr_src_to_str ;

const char *ipmi_addr_src_to_str(enum ipmi_addr_src src)
{
 if (src >= SI_LAST)
  src = 0;
 return addr_src_to_str[src];
}
