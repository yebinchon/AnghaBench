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
typedef  scalar_t__ sSetWinEventHook ;
typedef  int /*<<< orphan*/ * sRtlNtStatusToDosError ;
typedef  scalar_t__ sRtlGetVersion ;
typedef  scalar_t__ sRtlGenRandom ;
typedef  scalar_t__ sPowerRegisterSuspendResumeNotification ;
typedef  int /*<<< orphan*/ * sNtSetInformationFile ;
typedef  int /*<<< orphan*/ * sNtQueryVolumeInformationFile ;
typedef  int /*<<< orphan*/ * sNtQuerySystemInformation ;
typedef  int /*<<< orphan*/ * sNtQueryInformationProcess ;
typedef  int /*<<< orphan*/ * sNtQueryInformationFile ;
typedef  scalar_t__ sNtQueryDirectoryFile ;
typedef  int /*<<< orphan*/ * sNtDeviceIoControlFile ;
typedef  scalar_t__ sGetQueuedCompletionStatusEx ;
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 scalar_t__ pGetQueuedCompletionStatusEx ; 
 int /*<<< orphan*/ * pNtDeviceIoControlFile ; 
 scalar_t__ pNtQueryDirectoryFile ; 
 int /*<<< orphan*/ * pNtQueryInformationFile ; 
 int /*<<< orphan*/ * pNtQueryInformationProcess ; 
 int /*<<< orphan*/ * pNtQuerySystemInformation ; 
 int /*<<< orphan*/ * pNtQueryVolumeInformationFile ; 
 int /*<<< orphan*/ * pNtSetInformationFile ; 
 scalar_t__ pPowerRegisterSuspendResumeNotification ; 
 scalar_t__ pRtlGenRandom ; 
 scalar_t__ pRtlGetVersion ; 
 int /*<<< orphan*/ * pRtlNtStatusToDosError ; 
 scalar_t__ pSetWinEventHook ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(void) {
  HMODULE ntdll_module;
  HMODULE powrprof_module;
  HMODULE user32_module;
  HMODULE kernel32_module;
  HMODULE advapi32_module;

  ntdll_module = FUNC1("ntdll.dll");
  if (ntdll_module == NULL) {
    FUNC4(FUNC0(), "GetModuleHandleA");
  }

  pRtlGetVersion = (sRtlGetVersion) FUNC2(ntdll_module,
                                                   "RtlGetVersion");

  pRtlNtStatusToDosError = (sRtlNtStatusToDosError) FUNC2(
      ntdll_module,
      "RtlNtStatusToDosError");
  if (pRtlNtStatusToDosError == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtDeviceIoControlFile = (sNtDeviceIoControlFile) FUNC2(
      ntdll_module,
      "NtDeviceIoControlFile");
  if (pNtDeviceIoControlFile == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtQueryInformationFile = (sNtQueryInformationFile) FUNC2(
      ntdll_module,
      "NtQueryInformationFile");
  if (pNtQueryInformationFile == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtSetInformationFile = (sNtSetInformationFile) FUNC2(
      ntdll_module,
      "NtSetInformationFile");
  if (pNtSetInformationFile == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtQueryVolumeInformationFile = (sNtQueryVolumeInformationFile)
      FUNC2(ntdll_module, "NtQueryVolumeInformationFile");
  if (pNtQueryVolumeInformationFile == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtQueryDirectoryFile = (sNtQueryDirectoryFile)
      FUNC2(ntdll_module, "NtQueryDirectoryFile");
  if (pNtQueryVolumeInformationFile == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtQuerySystemInformation = (sNtQuerySystemInformation) FUNC2(
      ntdll_module,
      "NtQuerySystemInformation");
  if (pNtQuerySystemInformation == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  pNtQueryInformationProcess = (sNtQueryInformationProcess) FUNC2(
      ntdll_module,
      "NtQueryInformationProcess");
  if (pNtQueryInformationProcess == NULL) {
    FUNC4(FUNC0(), "GetProcAddress");
  }

  kernel32_module = FUNC1("kernel32.dll");
  if (kernel32_module == NULL) {
    FUNC4(FUNC0(), "GetModuleHandleA");
  }

  pGetQueuedCompletionStatusEx = (sGetQueuedCompletionStatusEx) FUNC2(
      kernel32_module,
      "GetQueuedCompletionStatusEx");

  powrprof_module = FUNC3("powrprof.dll");
  if (powrprof_module != NULL) {
    pPowerRegisterSuspendResumeNotification = (sPowerRegisterSuspendResumeNotification)
      FUNC2(powrprof_module, "PowerRegisterSuspendResumeNotification");
  }

  user32_module = FUNC3("user32.dll");
  if (user32_module != NULL) {
    pSetWinEventHook = (sSetWinEventHook)
      FUNC2(user32_module, "SetWinEventHook");
  }

  advapi32_module = FUNC1("advapi32.dll");
  if (advapi32_module == NULL) {
    FUNC4(FUNC0(), "GetModuleHandleA");
  }

  pRtlGenRandom =
      (sRtlGenRandom) FUNC2(advapi32_module, "SystemFunction036");
}