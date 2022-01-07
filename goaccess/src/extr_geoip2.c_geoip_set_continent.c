
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTINENT_LEN ;
 char* get_continent_name_and_code (char const*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static void
geoip_set_continent (const char *continent, char *loc)
{
  if (continent)
    snprintf (loc, CONTINENT_LEN, "%s",
              get_continent_name_and_code (continent));
  else
    snprintf (loc, CONTINENT_LEN, "%s", "Unknown");
}
