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
struct TYPE_2__ {char* date_num_format; char* spec_date_time_num_format; scalar_t__ date_spec_hr; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  char *buf = NULL, *tf = FUNC2 ();
  const char *df = conf.date_num_format;

  if (!df || !tf)
    return;

  if (conf.date_spec_hr && FUNC3 (tf, 'H'))
    buf = FUNC0 (df, "%H");
  else
    buf = FUNC4 (df);

  conf.spec_date_time_num_format = buf;
  FUNC1 (tf);
}