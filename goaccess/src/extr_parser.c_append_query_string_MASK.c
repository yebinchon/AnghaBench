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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (size_t) ; 

__attribute__((used)) static void
FUNC4 (char **req, const char *qstr)
{
  char *r;
  size_t s1, s2, qm = 0;

  s1 = FUNC2 (*req);
  s2 = FUNC2 (qstr);

  /* add '?' between the URL and the query string */
  if (*qstr != '?')
    qm = 1;

  r = FUNC3 (s1 + s2 + qm + 1);
  FUNC1 (r, *req, s1);
  if (qm)
    r[s1] = '?';
  FUNC1 (r + s1 + qm, qstr, s2 + 1);

  FUNC0 (*req);
  *req = r;
}