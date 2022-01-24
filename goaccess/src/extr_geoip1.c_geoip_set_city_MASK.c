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

/* Variables and functions */
 int /*<<< orphan*/  CITY_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC1 (const char *city, const char *region, char *loc)
{
  FUNC0 (loc, CITY_LEN, "%s, %s", city ? city : "N/A City",
            region ? region : "N/A Region");
}