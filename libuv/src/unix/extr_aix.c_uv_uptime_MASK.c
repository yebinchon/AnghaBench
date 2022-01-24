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
typedef  scalar_t__ time_t ;
struct utmp {scalar_t__ ut_type; scalar_t__ ut_time; scalar_t__* ut_user; } ;

/* Variables and functions */
 scalar_t__ BOOT_TIME ; 
 scalar_t__ USER_PROCESS ; 
 int /*<<< orphan*/  UTMP_FILE ; 
 int UV_ENOSYS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct utmp* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(double* uptime) {
  struct utmp *utmp_buf;
  size_t entries = 0;
  time_t boot_time;

  boot_time = 0;
  FUNC4(UTMP_FILE);

  FUNC2();

  while ((utmp_buf = FUNC1()) != NULL) {
    if (utmp_buf->ut_user[0] && utmp_buf->ut_type == USER_PROCESS)
      ++entries;
    if (utmp_buf->ut_type == BOOT_TIME)
      boot_time = utmp_buf->ut_time;
  }

  FUNC0();

  if (boot_time == 0)
    return UV_ENOSYS;

  *uptime = FUNC3(NULL) - boot_time;
  return 0;
}