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
typedef  int /*<<< orphan*/  GeoIP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  GEOIP_CHARSET_UTF8 ; 
 int /*<<< orphan*/  GEOIP_MEMORY_CACHE ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static GeoIP *
FUNC4 (const char *db)
{
  GeoIP *geoip;
  geoip = FUNC1 (db, GEOIP_MEMORY_CACHE);

  if (geoip == NULL)
    FUNC0 ("Unable to open GeoIP database: %s\n", db);

  FUNC2 (geoip, GEOIP_CHARSET_UTF8);
  FUNC3 (("Opened GeoIP City database: %s\n", db));

  return geoip;
}