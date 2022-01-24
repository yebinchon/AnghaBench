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
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (const char *ip, char *location, GTypeIP type_ip)
{
  const char *country = NULL, *code = NULL, *addr = ip;
  int geoid = 0;

  if (!FUNC4 ())
    return;

  if (!(country = FUNC1 (addr, type_ip)))
    goto out;

  /* return two letter country code */
  if (!(geoid = FUNC2 (addr, type_ip)))
    goto out;
  code = FUNC0 (geoid);

out:
  FUNC3 (country, code, location);
}