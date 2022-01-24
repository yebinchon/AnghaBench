#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ geoip_database; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5 (char *host, char *continent, char *country, char *city)
{
  int type_ip = 0;

  if (!FUNC4 ())
    return 1;

  if (FUNC3 (host, &type_ip))
    return 1;

  FUNC2 (host, country, type_ip);
  FUNC1 (host, continent, type_ip);
  if (conf.geoip_database)
    FUNC0 (host, city, type_ip);

  return 0;
}