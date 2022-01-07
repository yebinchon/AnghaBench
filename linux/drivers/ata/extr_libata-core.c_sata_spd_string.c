
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;

const char *sata_spd_string(unsigned int spd)
{
 static const char * const spd_str[] = {
  "1.5 Gbps",
  "3.0 Gbps",
  "6.0 Gbps",
 };

 if (spd == 0 || (spd - 1) >= ARRAY_SIZE(spd_str))
  return "<unknown>";
 return spd_str[spd - 1];
}
