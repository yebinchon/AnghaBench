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
struct TYPE_2__ {scalar_t__ date_spec_hr; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (char*,char) ; 
 size_t FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (char **fdate, const char *ftime)
{
  size_t dlen = 0, tlen = 0;
  char *key = NULL, *tkey = NULL, *pch = NULL;

  tkey = FUNC5 (ftime);
  if (conf.date_spec_hr && (pch = FUNC2 (tkey, ':')) && (pch - tkey) > 0)
    *pch = '\0';

  dlen = FUNC3 (*fdate);
  tlen = FUNC3 (tkey);

  key = FUNC4 (dlen + tlen + 1);
  FUNC1 (key, *fdate, dlen);
  FUNC1 (key + dlen, tkey, tlen + 1);

  FUNC0 (*fdate);
  FUNC0 (tkey);
  *fdate = key;
}