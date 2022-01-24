#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int user; int sys; int idle; int irq; scalar_t__ nice; } ;
struct TYPE_19__ {int QuadPart; } ;
struct TYPE_18__ {int QuadPart; } ;
struct TYPE_17__ {int QuadPart; } ;
struct TYPE_16__ {int QuadPart; } ;
struct TYPE_21__ {int speed; struct TYPE_21__* model; TYPE_5__ cpu_times; TYPE_4__ InterruptTime; TYPE_3__ IdleTime; TYPE_2__ KernelTime; TYPE_1__ UserTime; } ;
typedef  TYPE_6__ uv_cpu_info_t ;
typedef  int /*<<< orphan*/  cpu_speed ;
typedef  int /*<<< orphan*/  cpu_brand ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_22__ {int dwNumberOfProcessors; } ;
typedef  TYPE_6__ SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION ;
typedef  TYPE_8__ SYSTEM_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  SystemProcessorPerformanceInformation ; 
 size_t FUNC6 (int /*<<< orphan*/ *,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__*,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 TYPE_6__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int) ; 

int FUNC16(uv_cpu_info_t** cpu_infos_ptr, int* cpu_count_ptr) {
  uv_cpu_info_t* cpu_infos;
  SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION* sppi;
  DWORD sppi_size;
  SYSTEM_INFO system_info;
  DWORD cpu_count, i;
  NTSTATUS status;
  ULONG result_size;
  int err;
  uv_cpu_info_t* cpu_info;

  cpu_infos = NULL;
  cpu_count = 0;
  sppi = NULL;

  FUNC14();

  FUNC1(&system_info);
  cpu_count = system_info.dwNumberOfProcessors;

  cpu_infos = FUNC10(cpu_count, sizeof *cpu_infos);
  if (cpu_infos == NULL) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }

  sppi_size = cpu_count * sizeof(*sppi);
  sppi = FUNC13(sppi_size);
  if (sppi == NULL) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }

  status = FUNC8(SystemProcessorPerformanceInformation,
                                     sppi,
                                     sppi_size,
                                     &result_size);
  if (!FUNC2(status)) {
    err = FUNC9(status);
    goto error;
  }

  FUNC7(result_size == sppi_size);

  for (i = 0; i < cpu_count; i++) {
    WCHAR key_name[128];
    HKEY processor_key;
    DWORD cpu_speed;
    DWORD cpu_speed_size = sizeof(cpu_speed);
    WCHAR cpu_brand[256];
    DWORD cpu_brand_size = sizeof(cpu_brand);
    size_t len;

    len = FUNC6(key_name,
                     FUNC0(key_name),
                     L"HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\%d",
                     i);

    FUNC7(len > 0 && len < FUNC0(key_name));

    err = FUNC4(HKEY_LOCAL_MACHINE,
                        key_name,
                        0,
                        KEY_QUERY_VALUE,
                        &processor_key);
    if (err != ERROR_SUCCESS) {
      goto error;
    }

    err = FUNC5(processor_key,
                           L"~MHz",
                           NULL,
                           NULL,
                           (BYTE*)&cpu_speed,
                           &cpu_speed_size);
    if (err != ERROR_SUCCESS) {
      FUNC3(processor_key);
      goto error;
    }

    err = FUNC5(processor_key,
                           L"ProcessorNameString",
                           NULL,
                           NULL,
                           (BYTE*)&cpu_brand,
                           &cpu_brand_size);
    FUNC3(processor_key);
    if (err != ERROR_SUCCESS)
      goto error;

    cpu_info = &cpu_infos[i];
    cpu_info->speed = cpu_speed;
    cpu_info->cpu_times.user = sppi[i].UserTime.QuadPart / 10000;
    cpu_info->cpu_times.sys = (sppi[i].KernelTime.QuadPart -
        sppi[i].IdleTime.QuadPart) / 10000;
    cpu_info->cpu_times.idle = sppi[i].IdleTime.QuadPart / 10000;
    cpu_info->cpu_times.irq = sppi[i].InterruptTime.QuadPart / 10000;
    cpu_info->cpu_times.nice = 0;

    FUNC11(cpu_brand,
                              cpu_brand_size / sizeof(WCHAR),
                              &(cpu_info->model));
  }

  FUNC12(sppi);

  *cpu_count_ptr = cpu_count;
  *cpu_infos_ptr = cpu_infos;

  return 0;

 error:
  if (cpu_infos != NULL) {
    /* This is safe because the cpu_infos array is zeroed on allocation. */
    for (i = 0; i < cpu_count; i++)
      FUNC12(cpu_infos[i].model);
  }

  FUNC12(cpu_infos);
  FUNC12(sppi);

  return FUNC15(err);
}