
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sSetWinEventHook ;
typedef int * sRtlNtStatusToDosError ;
typedef scalar_t__ sRtlGetVersion ;
typedef scalar_t__ sRtlGenRandom ;
typedef scalar_t__ sPowerRegisterSuspendResumeNotification ;
typedef int * sNtSetInformationFile ;
typedef int * sNtQueryVolumeInformationFile ;
typedef int * sNtQuerySystemInformation ;
typedef int * sNtQueryInformationProcess ;
typedef int * sNtQueryInformationFile ;
typedef scalar_t__ sNtQueryDirectoryFile ;
typedef int * sNtDeviceIoControlFile ;
typedef scalar_t__ sGetQueuedCompletionStatusEx ;
typedef int * HMODULE ;


 int GetLastError () ;
 int * GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibraryA (char*) ;
 scalar_t__ pGetQueuedCompletionStatusEx ;
 int * pNtDeviceIoControlFile ;
 scalar_t__ pNtQueryDirectoryFile ;
 int * pNtQueryInformationFile ;
 int * pNtQueryInformationProcess ;
 int * pNtQuerySystemInformation ;
 int * pNtQueryVolumeInformationFile ;
 int * pNtSetInformationFile ;
 scalar_t__ pPowerRegisterSuspendResumeNotification ;
 scalar_t__ pRtlGenRandom ;
 scalar_t__ pRtlGetVersion ;
 int * pRtlNtStatusToDosError ;
 scalar_t__ pSetWinEventHook ;
 int uv_fatal_error (int ,char*) ;

void uv_winapi_init(void) {
  HMODULE ntdll_module;
  HMODULE powrprof_module;
  HMODULE user32_module;
  HMODULE kernel32_module;
  HMODULE advapi32_module;

  ntdll_module = GetModuleHandleA("ntdll.dll");
  if (ntdll_module == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetModuleHandleA");
  }

  pRtlGetVersion = (sRtlGetVersion) GetProcAddress(ntdll_module,
                                                   "RtlGetVersion");

  pRtlNtStatusToDosError = (sRtlNtStatusToDosError) GetProcAddress(
      ntdll_module,
      "RtlNtStatusToDosError");
  if (pRtlNtStatusToDosError == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtDeviceIoControlFile = (sNtDeviceIoControlFile) GetProcAddress(
      ntdll_module,
      "NtDeviceIoControlFile");
  if (pNtDeviceIoControlFile == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtQueryInformationFile = (sNtQueryInformationFile) GetProcAddress(
      ntdll_module,
      "NtQueryInformationFile");
  if (pNtQueryInformationFile == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtSetInformationFile = (sNtSetInformationFile) GetProcAddress(
      ntdll_module,
      "NtSetInformationFile");
  if (pNtSetInformationFile == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtQueryVolumeInformationFile = (sNtQueryVolumeInformationFile)
      GetProcAddress(ntdll_module, "NtQueryVolumeInformationFile");
  if (pNtQueryVolumeInformationFile == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtQueryDirectoryFile = (sNtQueryDirectoryFile)
      GetProcAddress(ntdll_module, "NtQueryDirectoryFile");
  if (pNtQueryVolumeInformationFile == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtQuerySystemInformation = (sNtQuerySystemInformation) GetProcAddress(
      ntdll_module,
      "NtQuerySystemInformation");
  if (pNtQuerySystemInformation == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  pNtQueryInformationProcess = (sNtQueryInformationProcess) GetProcAddress(
      ntdll_module,
      "NtQueryInformationProcess");
  if (pNtQueryInformationProcess == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetProcAddress");
  }

  kernel32_module = GetModuleHandleA("kernel32.dll");
  if (kernel32_module == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetModuleHandleA");
  }

  pGetQueuedCompletionStatusEx = (sGetQueuedCompletionStatusEx) GetProcAddress(
      kernel32_module,
      "GetQueuedCompletionStatusEx");

  powrprof_module = LoadLibraryA("powrprof.dll");
  if (powrprof_module != ((void*)0)) {
    pPowerRegisterSuspendResumeNotification = (sPowerRegisterSuspendResumeNotification)
      GetProcAddress(powrprof_module, "PowerRegisterSuspendResumeNotification");
  }

  user32_module = LoadLibraryA("user32.dll");
  if (user32_module != ((void*)0)) {
    pSetWinEventHook = (sSetWinEventHook)
      GetProcAddress(user32_module, "SetWinEventHook");
  }

  advapi32_module = GetModuleHandleA("advapi32.dll");
  if (advapi32_module == ((void*)0)) {
    uv_fatal_error(GetLastError(), "GetModuleHandleA");
  }

  pRtlGenRandom =
      (sRtlGenRandom) GetProcAddress(advapi32_module, "SystemFunction036");
}
