#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_14__ {int ru_majflt; int ru_maxrss; int ru_oublock; int ru_inblock; TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
typedef  TYPE_3__ uv_rusage_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  memCounters ;
struct TYPE_17__ {scalar_t__ ReadOperationCount; scalar_t__ WriteOperationCount; } ;
struct TYPE_16__ {scalar_t__ PeakWorkingSetSize; scalar_t__ PageFaultCount; } ;
struct TYPE_15__ {int wHour; int wMinute; int wMilliseconds; scalar_t__ wSecond; } ;
typedef  TYPE_4__ SYSTEMTIME ;
typedef  TYPE_5__ PROCESS_MEMORY_COUNTERS ;
typedef  TYPE_6__ IO_COUNTERS ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(uv_rusage_t *uv_rusage) {
  FILETIME createTime, exitTime, kernelTime, userTime;
  SYSTEMTIME kernelSystemTime, userSystemTime;
  PROCESS_MEMORY_COUNTERS memCounters;
  IO_COUNTERS ioCounters;
  int ret;

  ret = FUNC5(FUNC1(), &createTime, &exitTime, &kernelTime, &userTime);
  if (ret == 0) {
    return FUNC7(FUNC2());
  }

  ret = FUNC0(&kernelTime, &kernelSystemTime);
  if (ret == 0) {
    return FUNC7(FUNC2());
  }

  ret = FUNC0(&userTime, &userSystemTime);
  if (ret == 0) {
    return FUNC7(FUNC2());
  }

  ret = FUNC4(FUNC1(),
                             &memCounters,
                             sizeof(memCounters));
  if (ret == 0) {
    return FUNC7(FUNC2());
  }

  ret = FUNC3(FUNC1(), &ioCounters);
  if (ret == 0) {
    return FUNC7(FUNC2());
  }

  FUNC6(uv_rusage, 0, sizeof(*uv_rusage));

  uv_rusage->ru_utime.tv_sec = userSystemTime.wHour * 3600 +
                               userSystemTime.wMinute * 60 +
                               userSystemTime.wSecond;
  uv_rusage->ru_utime.tv_usec = userSystemTime.wMilliseconds * 1000;

  uv_rusage->ru_stime.tv_sec = kernelSystemTime.wHour * 3600 +
                               kernelSystemTime.wMinute * 60 +
                               kernelSystemTime.wSecond;
  uv_rusage->ru_stime.tv_usec = kernelSystemTime.wMilliseconds * 1000;

  uv_rusage->ru_majflt = (uint64_t) memCounters.PageFaultCount;
  uv_rusage->ru_maxrss = (uint64_t) memCounters.PeakWorkingSetSize / 1024;

  uv_rusage->ru_oublock = (uint64_t) ioCounters.WriteOperationCount;
  uv_rusage->ru_inblock = (uint64_t) ioCounters.ReadOperationCount;

  return 0;
}