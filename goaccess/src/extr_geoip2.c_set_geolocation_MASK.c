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
typedef  int /*<<< orphan*/  MMDB_lookup_result_s ;

/* Variables and functions */
 scalar_t__ geoip_city_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5 (char *host, char *continent, char *country, char *city)
{
  MMDB_lookup_result_s res;

  if (!FUNC4 ())
    return 1;

  FUNC0 (&res, host);
  FUNC3 (res, country);
  FUNC2 (res, continent);
  if (geoip_city_type)
    FUNC1 (res, city);

  return 0;
}