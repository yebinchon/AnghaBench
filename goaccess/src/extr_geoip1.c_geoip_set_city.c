
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CITY_LEN ;
 int snprintf (char*,int ,char*,char const*,char const*) ;

__attribute__((used)) static void
geoip_set_city (const char *city, const char *region, char *loc)
{
  snprintf (loc, CITY_LEN, "%s, %s", city ? city : "N/A City",
            region ? region : "N/A Region");
}
