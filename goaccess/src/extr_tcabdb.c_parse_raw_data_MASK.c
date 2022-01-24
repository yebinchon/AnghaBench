#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  idx; } ;
typedef  scalar_t__ GRawDataType ;
typedef  TYPE_1__ GRawData ;
typedef  int GModule ;

/* Variables and functions */
 scalar_t__ INTEGER ; 
 int /*<<< orphan*/  MTRC_DATAMAP ; 
 int /*<<< orphan*/  MTRC_HITS ; 
 scalar_t__ STRING ; 
#define  VISITORS 128 
 int /*<<< orphan*/  data_iter_generic ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 

GRawData *
FUNC6 (GModule module)
{
  GRawData *raw_data;
  GRawDataType type;
  uint32_t ht_size = 0;
  void *hash = NULL;

  switch (module) {
  case VISITORS:
    hash = FUNC0 (module, MTRC_DATAMAP);
    type = STRING;
    break;
  default:
    hash = FUNC0 (module, MTRC_HITS);
    type = INTEGER;
  }

  if (!hash)
    return NULL;

  ht_size = FUNC1 (hash);
  raw_data = FUNC2 (module, ht_size);
  raw_data->type = type;

  FUNC5 (hash, data_iter_generic, raw_data);
  if (raw_data->type == STRING) {
    FUNC4 (raw_data, raw_data->idx);
  } else {
    FUNC3 (raw_data, raw_data->idx);
  }

  return raw_data;
}