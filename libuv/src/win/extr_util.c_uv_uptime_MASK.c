#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  stack_buffer ;
struct TYPE_10__ {int CounterNameTitleIndex; int CounterSize; int CounterOffset; int CounterType; int ByteLength; } ;
struct TYPE_9__ {int HeaderLength; int /*<<< orphan*/  Signature; } ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_8__ {scalar_t__ NumInstances; int HeaderLength; int NumCounters; int DefinitionLength; TYPE_2__ PerfFreq; TYPE_1__ PerfTime; } ;
typedef  TYPE_3__ PERF_OBJECT_TYPE ;
typedef  TYPE_4__ PERF_DATA_BLOCK ;
typedef  TYPE_5__ PERF_COUNTER_DEFINITION ;
typedef  scalar_t__ LONG ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_PERFORMANCE_DATA ; 
 scalar_t__ PERF_NO_INSTANCES ; 
 int PERF_OBJECT_TIMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int UV_EIO ; 
 int UV_ENOMEM ; 
 int UV_ENOSYS ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(double* uptime) {
  BYTE stack_buffer[4096];
  BYTE* malloced_buffer = NULL;
  BYTE* buffer = (BYTE*) stack_buffer;
  size_t buffer_size = sizeof(stack_buffer);
  DWORD data_size;

  PERF_DATA_BLOCK* data_block;
  PERF_OBJECT_TYPE* object_type;
  PERF_COUNTER_DEFINITION* counter_definition;

  DWORD i;

  for (;;) {
    LONG result;

    data_size = (DWORD) buffer_size;
    result = FUNC0(HKEY_PERFORMANCE_DATA,
                              L"2",
                              NULL,
                              NULL,
                              buffer,
                              &data_size);
    if (result == ERROR_SUCCESS) {
      break;
    } else if (result != ERROR_MORE_DATA) {
      *uptime = 0;
      return FUNC4(result);
    }

    buffer_size *= 2;
    /* Don't let the buffer grow infinitely. */
    if (buffer_size > 1 << 20) {
      goto internalError;
    }

    FUNC2(malloced_buffer);

    buffer = malloced_buffer = (BYTE*) FUNC3(buffer_size);
    if (malloced_buffer == NULL) {
      *uptime = 0;
      return UV_ENOMEM;
    }
  }

  if (data_size < sizeof(*data_block))
    goto internalError;

  data_block = (PERF_DATA_BLOCK*) buffer;

  if (FUNC5(data_block->Signature, L"PERF", 4) != 0)
    goto internalError;

  if (data_size < data_block->HeaderLength + sizeof(*object_type))
    goto internalError;

  object_type = (PERF_OBJECT_TYPE*) (buffer + data_block->HeaderLength);

  if (object_type->NumInstances != PERF_NO_INSTANCES)
    goto internalError;

  counter_definition = (PERF_COUNTER_DEFINITION*) (buffer +
      data_block->HeaderLength + object_type->HeaderLength);
  for (i = 0; i < object_type->NumCounters; i++) {
    if ((BYTE*) counter_definition + sizeof(*counter_definition) >
        buffer + data_size) {
      break;
    }

    if (counter_definition->CounterNameTitleIndex == 674 &&
        counter_definition->CounterSize == sizeof(uint64_t)) {
      if (counter_definition->CounterOffset + sizeof(uint64_t) > data_size ||
          !(counter_definition->CounterType & PERF_OBJECT_TIMER)) {
        goto internalError;
      } else {
        BYTE* address = (BYTE*) object_type + object_type->DefinitionLength +
                        counter_definition->CounterOffset;
        uint64_t value = *((uint64_t*) address);
        *uptime = FUNC1((double) (object_type->PerfTime.QuadPart - value) /
                        (double) object_type->PerfFreq.QuadPart);
        FUNC2(malloced_buffer);
        return 0;
      }
    }

    counter_definition = (PERF_COUNTER_DEFINITION*)
        ((BYTE*) counter_definition + counter_definition->ByteLength);
  }

  /* If we get here, the uptime value was not found. */
  FUNC2(malloced_buffer);
  *uptime = 0;
  return UV_ENOSYS;

 internalError:
  FUNC2(malloced_buffer);
  *uptime = 0;
  return UV_EIO;
}