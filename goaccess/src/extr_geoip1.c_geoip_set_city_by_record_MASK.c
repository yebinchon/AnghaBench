#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* city; char* region; } ;
typedef  TYPE_1__ GeoIPRecord ;
typedef  int /*<<< orphan*/  GTypeIP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char*) ; 
 TYPE_1__* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (const char *ip, char *location, GTypeIP type_ip)
{
  GeoIPRecord *rec = NULL;
  const char *city = NULL, *region = NULL, *addr = ip;

  /* Custom GeoIP database */
  if ((rec = FUNC2 (addr, type_ip))) {
    city = rec->city;
    region = rec->region;
  }

  FUNC1 (city, region, location);
  if (rec != NULL) {
    FUNC0 (rec);
  }
}