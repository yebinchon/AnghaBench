
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTRY_LEN ;
 int snprintf (char*,int ,char*,char const*,...) ;

__attribute__((used)) static void
geoip_set_country (const char *country, const char *code, char *loc)
{
  if (country && code)
    snprintf (loc, COUNTRY_LEN, "%s %s", code, country);
  else
    snprintf (loc, COUNTRY_LEN, "%s", "Unknown");
}
