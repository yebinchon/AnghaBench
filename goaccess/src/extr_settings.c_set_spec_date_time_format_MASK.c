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
struct TYPE_2__ {char* spec_date_time_num_format; char* spec_date_time_format; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 scalar_t__ FUNC0 (char*,int,char*) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  char *buf = NULL;
  const char *fmt = conf.spec_date_time_num_format;
  int buflen = 0, flen = 0;

  if (!fmt)
    return;

  flen = (FUNC2 (fmt) * 2) + 1;
  buf = FUNC3 (flen, sizeof (char));

  if (FUNC1 (fmt, 'd'))
    buflen += FUNC0 (buf + buflen, flen - buflen, "%%d/");
  if (FUNC1 (fmt, 'm'))
    buflen += FUNC0 (buf + buflen, flen - buflen, "%%b/");
  if (FUNC1 (fmt, 'Y'))
    buflen += FUNC0 (buf + buflen, flen - buflen, "%%Y");
  if (FUNC1 (fmt, 'H'))
    buflen += FUNC0 (buf + buflen, flen - buflen, ":%%H");

  conf.spec_date_time_format = buf;
}