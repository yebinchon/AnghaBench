
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ExceptionRecord; } ;
struct TYPE_4__ {int NumberParameters; int * ExceptionInformation; } ;
typedef TYPE_2__* PEXCEPTION_POINTERS ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;


 int ERROR_SUCCESS ;
 scalar_t__ EXCEPTION_CONTINUE_SEARCH ;
 scalar_t__ EXCEPTION_EXECUTE_HANDLER ;
 scalar_t__ EXCEPTION_IN_PAGE_ERROR ;
 int UV_UNKNOWN ;
 int assert (int ) ;
 int pRtlNtStatusToDosError (int ) ;

LONG fs__filemap_ex_filter(LONG excode, PEXCEPTION_POINTERS pep,
                           int* perror) {
  if (excode != EXCEPTION_IN_PAGE_ERROR) {
    return EXCEPTION_CONTINUE_SEARCH;
  }

  assert(perror != ((void*)0));
  if (pep != ((void*)0) && pep->ExceptionRecord != ((void*)0) &&
      pep->ExceptionRecord->NumberParameters >= 3) {
    NTSTATUS status = (NTSTATUS)pep->ExceptionRecord->ExceptionInformation[3];
    *perror = pRtlNtStatusToDosError(status);
    if (*perror != ERROR_SUCCESS) {
      return EXCEPTION_EXECUTE_HANDLER;
    }
  }
  *perror = UV_UNKNOWN;
  return EXCEPTION_EXECUTE_HANDLER;
}
