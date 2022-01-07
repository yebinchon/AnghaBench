
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_7__ {scalar_t__ hm_nvml; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_8__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_9__ {void* lib; } ;
typedef TYPE_3__ NVML_PTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int HCFILE ;
typedef int DWORD ;


 int CCP_PROC_CYGDRIVE ;
 int CCP_WIN_A_TO_POSIX ;
 scalar_t__ ERROR_SUCCESS ;
 int HC_LOAD_FUNC (TYPE_3__*,int ,int ,int ,int ) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int NVML ;
 int NVML_DEVICE_GET_CLOCKINFO ;
 int NVML_DEVICE_GET_COUNT ;
 int NVML_DEVICE_GET_CURRENTCLOCKSTHROTTLEREASONS ;
 int NVML_DEVICE_GET_CURRPCIELINKGENERATION ;
 int NVML_DEVICE_GET_CURRPCIELINKWIDTH ;
 int NVML_DEVICE_GET_FAN_SPEED ;
 int NVML_DEVICE_GET_HANDLE_BY_INDEX ;
 int NVML_DEVICE_GET_NAME ;
 int NVML_DEVICE_GET_PCIINFO ;
 int NVML_DEVICE_GET_SUPPORTEDCLOCKSTHROTTLEREASONS ;
 int NVML_DEVICE_GET_TEMPERATURE ;
 int NVML_DEVICE_GET_THRESHOLD ;
 int NVML_DEVICE_GET_UTILIZATION_RATES ;
 int NVML_ERROR_STRING ;
 int NVML_INIT ;
 int NVML_SHUTDOWN ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int*,int ,int*) ;
 int cygwin_conv_path (int,char*,char*,int) ;
 void* hc_dlopen (char*) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_fread (char*,int,int,int *) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int nvmlDeviceGetClockInfo ;
 int nvmlDeviceGetCount ;
 int nvmlDeviceGetCurrPcieLinkGeneration ;
 int nvmlDeviceGetCurrPcieLinkWidth ;
 int nvmlDeviceGetCurrentClocksThrottleReasons ;
 int nvmlDeviceGetFanSpeed ;
 int nvmlDeviceGetHandleByIndex ;
 int nvmlDeviceGetName ;
 int nvmlDeviceGetPciInfo ;
 int nvmlDeviceGetSupportedClocksThrottleReasons ;
 int nvmlDeviceGetTemperature ;
 int nvmlDeviceGetTemperatureThreshold ;
 int nvmlDeviceGetUtilizationRates ;
 int nvmlErrorString ;
 int nvmlInit ;
 int nvmlShutdown ;
 int strcat (char*,char*) ;

__attribute__((used)) static int nvml_init (hashcat_ctx_t *hashcat_ctx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  NVML_PTR *nvml = (NVML_PTR *) hwmon_ctx->hm_nvml;

  memset (nvml, 0, sizeof (NVML_PTR));
  if (!nvml->lib)
  {



    return -1;
  }

  HC_LOAD_FUNC(nvml, nvmlErrorString, NVML_ERROR_STRING, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlInit, NVML_INIT, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlShutdown, NVML_SHUTDOWN, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetCount, NVML_DEVICE_GET_COUNT, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetName, NVML_DEVICE_GET_NAME, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetHandleByIndex, NVML_DEVICE_GET_HANDLE_BY_INDEX, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetTemperature, NVML_DEVICE_GET_TEMPERATURE, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetFanSpeed, NVML_DEVICE_GET_FAN_SPEED, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetUtilizationRates, NVML_DEVICE_GET_UTILIZATION_RATES, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetClockInfo, NVML_DEVICE_GET_CLOCKINFO, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetTemperatureThreshold, NVML_DEVICE_GET_THRESHOLD, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetCurrPcieLinkGeneration, NVML_DEVICE_GET_CURRPCIELINKGENERATION, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetCurrPcieLinkWidth, NVML_DEVICE_GET_CURRPCIELINKWIDTH, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetCurrentClocksThrottleReasons, NVML_DEVICE_GET_CURRENTCLOCKSTHROTTLEREASONS, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetSupportedClocksThrottleReasons, NVML_DEVICE_GET_SUPPORTEDCLOCKSTHROTTLEREASONS, NVML, 0);
  HC_LOAD_FUNC(nvml, nvmlDeviceGetPciInfo, NVML_DEVICE_GET_PCIINFO, NVML, 0);

  return 0;
}
