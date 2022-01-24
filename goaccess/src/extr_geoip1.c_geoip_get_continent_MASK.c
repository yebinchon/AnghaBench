#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GTypeIP ;

/* Variables and functions */
#define  GEOIP_CITY_EDITION_REV0 133 
#define  GEOIP_CITY_EDITION_REV0_V6 132 
#define  GEOIP_CITY_EDITION_REV1 131 
#define  GEOIP_CITY_EDITION_REV1_V6 130 
#define  GEOIP_COUNTRY_EDITION 129 
#define  GEOIP_COUNTRY_EDITION_V6 128 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_IPV4 ; 
 int /*<<< orphan*/  TYPE_IPV6 ; 
 int /*<<< orphan*/  geo_location_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4 (const char *ip, char *location, GTypeIP type_ip)
{
  unsigned char rec = FUNC0 (geo_location_data);

  switch (rec) {
  case GEOIP_COUNTRY_EDITION:
    if (TYPE_IPV4 == type_ip)
      FUNC2 (ip, location, TYPE_IPV4);
    else
      FUNC1 (NULL, location);
    break;
  case GEOIP_COUNTRY_EDITION_V6:
    if (TYPE_IPV6 == type_ip)
      FUNC2 (ip, location, TYPE_IPV6);
    else
      FUNC1 (NULL, location);
    break;
  case GEOIP_CITY_EDITION_REV0:
  case GEOIP_CITY_EDITION_REV1:
    if (TYPE_IPV4 == type_ip)
      FUNC3 (ip, location, TYPE_IPV4);
    else
      FUNC1 (NULL, location);
    break;
  case GEOIP_CITY_EDITION_REV0_V6:
  case GEOIP_CITY_EDITION_REV1_V6:
    if (TYPE_IPV6 == type_ip)
      FUNC3 (ip, location, TYPE_IPV6);
    else
      FUNC1 (NULL, location);
    break;
  }
}