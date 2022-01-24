#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int LimitFlags; } ;
struct TYPE_8__ {TYPE_1__ BasicLimitInformation; int /*<<< orphan*/  bInheritHandle; } ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  TYPE_2__ JOBOBJECT_EXTENDED_LIMIT_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int JOB_OBJECT_LIMIT_BREAKAWAY_OK ; 
 int JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION ; 
 int JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE ; 
 int JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK ; 
 int /*<<< orphan*/  JobObjectExtendedLimitInformation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * uv_global_job_handle_ ; 

__attribute__((used)) static void FUNC5(void) {
  /* Create a job object and set it up to kill all contained processes when
   * it's closed. Since this handle is made non-inheritable and we're not
   * giving it to anyone, we're the only process holding a reference to it.
   * That means that if this process exits it is closed and all the processes
   * it contains are killed. All processes created with uv_spawn that are not
   * spawned with the UV_PROCESS_DETACHED flag are assigned to this job.
   *
   * We're setting the JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK flag so only the
   * processes that we explicitly add are affected, and *their* subprocesses
   * are not. This ensures that our child processes are not limited in their
   * ability to use job control on Windows versions that don't deal with
   * nested jobs (prior to Windows 8 / Server 2012). It also lets our child
   * processes created detached processes without explicitly breaking away
   * from job control (which uv_spawn doesn't, either).
   */
  SECURITY_ATTRIBUTES attr;
  JOBOBJECT_EXTENDED_LIMIT_INFORMATION info;

  FUNC3(&attr, 0, sizeof attr);
  attr.bInheritHandle = FALSE;

  FUNC3(&info, 0, sizeof info);
  info.BasicLimitInformation.LimitFlags =
      JOB_OBJECT_LIMIT_BREAKAWAY_OK |
      JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK |
      JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION |
      JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE;

  uv_global_job_handle_ = FUNC0(&attr, NULL);
  if (uv_global_job_handle_ == NULL)
    FUNC4(FUNC1(), "CreateJobObjectW");

  if (!FUNC2(uv_global_job_handle_,
                               JobObjectExtendedLimitInformation,
                               &info,
                               sizeof info))
    FUNC4(FUNC1(), "SetInformationJobObject");
}