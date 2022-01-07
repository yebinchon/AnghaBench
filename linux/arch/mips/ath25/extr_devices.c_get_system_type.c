
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (char const**) ;
 size_t ATH25_SOC_UNKNOWN ;
 size_t ath25_soc ;
 char const** soc_type_strings ;

const char *get_system_type(void)
{
 if ((ath25_soc >= ARRAY_SIZE(soc_type_strings)) ||
     !soc_type_strings[ath25_soc])
  return soc_type_strings[ATH25_SOC_UNKNOWN];
 return soc_type_strings[ath25_soc];
}
