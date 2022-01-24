#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ speed; } ;
typedef  TYPE_1__ uv_cpu_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 int UV_ENOMEM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (unsigned int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int) ; 

int FUNC10(uv_cpu_info_t** cpu_infos, int* count) {
  unsigned int numcpus;
  uv_cpu_info_t* ci;
  int err;
  FILE* statfile_fp;

  *cpu_infos = NULL;
  *count = 0;

  statfile_fp = FUNC8("/proc/stat");
  if (statfile_fp == NULL)
    return FUNC0(errno);

  err = FUNC7(statfile_fp, &numcpus);
  if (err < 0)
    goto out;

  err = UV_ENOMEM;
  ci = FUNC6(numcpus, sizeof(*ci));
  if (ci == NULL)
    goto out;

  err = FUNC3(numcpus, ci);
  if (err == 0)
    err = FUNC5(statfile_fp, numcpus, ci);

  if (err) {
    FUNC9(ci, numcpus);
    goto out;
  }

  /* read_models() on x86 also reads the CPU speed from /proc/cpuinfo.
   * We don't check for errors here. Worst case, the field is left zero.
   */
  if (ci[0].speed == 0)
    FUNC4(numcpus, ci);

  *cpu_infos = ci;
  *count = numcpus;
  err = 0;

out:

  if (FUNC2(statfile_fp))
    if (errno != EINTR && errno != EINPROGRESS)
      FUNC1();

  return err;
}