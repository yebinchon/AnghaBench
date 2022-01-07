
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int LimitFlags; } ;
struct TYPE_8__ {TYPE_1__ BasicLimitInformation; int bInheritHandle; } ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_2__ JOBOBJECT_EXTENDED_LIMIT_INFORMATION ;


 int * CreateJobObjectW (TYPE_2__*,int *) ;
 int FALSE ;
 int GetLastError () ;
 int JOB_OBJECT_LIMIT_BREAKAWAY_OK ;
 int JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION ;
 int JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE ;
 int JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK ;
 int JobObjectExtendedLimitInformation ;
 int SetInformationJobObject (int *,int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int uv_fatal_error (int ,char*) ;
 int * uv_global_job_handle_ ;

__attribute__((used)) static void uv__init_global_job_handle(void) {
  SECURITY_ATTRIBUTES attr;
  JOBOBJECT_EXTENDED_LIMIT_INFORMATION info;

  memset(&attr, 0, sizeof attr);
  attr.bInheritHandle = FALSE;

  memset(&info, 0, sizeof info);
  info.BasicLimitInformation.LimitFlags =
      JOB_OBJECT_LIMIT_BREAKAWAY_OK |
      JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK |
      JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION |
      JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE;

  uv_global_job_handle_ = CreateJobObjectW(&attr, ((void*)0));
  if (uv_global_job_handle_ == ((void*)0))
    uv_fatal_error(GetLastError(), "CreateJobObjectW");

  if (!SetInformationJobObject(uv_global_job_handle_,
                               JobObjectExtendedLimitInformation,
                               &info,
                               sizeof info))
    uv_fatal_error(GetLastError(), "SetInformationJobObject");
}
