
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_pid_t ;
struct TYPE_4__ {int dwSize; scalar_t__ th32ProcessID; int th32ParentProcessID; } ;
typedef TYPE_1__ PROCESSENTRY32 ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int CreateToolhelp32Snapshot (int ,int ) ;
 scalar_t__ GetCurrentProcessId () ;
 scalar_t__ Process32First (int ,TYPE_1__*) ;
 scalar_t__ Process32Next (int ,TYPE_1__*) ;
 int TH32CS_SNAPPROCESS ;

uv_pid_t uv_os_getppid(void) {
  int parent_pid = -1;
  HANDLE handle;
  PROCESSENTRY32 pe;
  DWORD current_pid = GetCurrentProcessId();

  pe.dwSize = sizeof(PROCESSENTRY32);
  handle = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

  if (Process32First(handle, &pe)) {
    do {
      if (pe.th32ProcessID == current_pid) {
        parent_pid = pe.th32ParentProcessID;
        break;
      }
    } while( Process32Next(handle, &pe));
  }

  CloseHandle(handle);
  return parent_pid;
}
