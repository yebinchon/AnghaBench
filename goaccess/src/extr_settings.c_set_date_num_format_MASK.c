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
struct TYPE_2__ {char* date_num_format; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (int,int) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8 (void)
{
  char *fdate = NULL, *buf = NULL;
  int buflen = 0, flen = 0;

  fdate = FUNC2 ();
  if (!fdate)
    return 1;

  if (FUNC1 (fdate)) {
    FUNC0 (fdate);
    conf.date_num_format = FUNC7 ("%Y%m%d");
    return 0;
  }

  flen = FUNC4 (fdate) + 1;
  buf = FUNC6 (flen, sizeof (char));

  if (FUNC5 (fdate, "Yy"))
    buflen += FUNC3 (buf + buflen, flen - buflen, "%%Y");
  if (FUNC5 (fdate, "hbmB"))
    buflen += FUNC3 (buf + buflen, flen - buflen, "%%m");
  if (FUNC5 (fdate, "de"))
    buflen += FUNC3 (buf + buflen, flen - buflen, "%%d");

  conf.date_num_format = buf;
  FUNC0 (fdate);

  return buflen == 0 ? 1 : 0;
}