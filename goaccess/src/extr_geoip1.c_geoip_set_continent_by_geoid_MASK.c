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
 char* FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (const char *ip, char *location, GTypeIP type_ip)
{
  const char *continent = NULL, *addr = ip;
  int geoid = 0;

  if (!FUNC3 ())
    return;

  if (!(geoid = FUNC1 (addr, type_ip)))
    goto out;
  continent = FUNC0 (geoid);

out:
  FUNC2 (continent, location);
}