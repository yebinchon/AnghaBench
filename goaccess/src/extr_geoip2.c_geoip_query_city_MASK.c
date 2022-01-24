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
struct TYPE_4__ {scalar_t__ found_entry; } ;
typedef  TYPE_1__ MMDB_lookup_result_s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (TYPE_1__,char*,char*,char*,char*,...) ; 

__attribute__((used)) static void
FUNC2 (MMDB_lookup_result_s res, char *location)
{
  char *city = NULL, *region = NULL;

  if (res.found_entry) {
    city = FUNC1 (res, "city", "names", "en", NULL);
    region = FUNC1 (res, "subdivisions", "0", "names", "en", NULL);
  }
  FUNC0 (city, region, location);
}