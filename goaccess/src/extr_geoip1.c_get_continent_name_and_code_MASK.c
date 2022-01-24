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
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static const char *
FUNC1 (const char *continentid)
{
  if (FUNC0 (continentid, "NA", 2) == 0)
    return "NA North America";
  else if (FUNC0 (continentid, "OC", 2) == 0)
    return "OC Oceania";
  else if (FUNC0 (continentid, "EU", 2) == 0)
    return "EU Europe";
  else if (FUNC0 (continentid, "SA", 2) == 0)
    return "SA South America";
  else if (FUNC0 (continentid, "AF", 2) == 0)
    return "AF Africa";
  else if (FUNC0 (continentid, "AN", 2) == 0)
    return "AN Antarctica";
  else if (FUNC0 (continentid, "AS", 2) == 0)
    return "AS Asia";
  else
    return "-- Unknown";
}