#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kfs_file_handle_t ;
typedef  int /*<<< orphan*/  field_desc ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_18__ {int type; char* name; } ;
struct TYPE_17__ {TYPE_3__* root; } ;
struct TYPE_16__ {scalar_t__ index_type; scalar_t__ log_pos1_crc32; scalar_t__ log_pos1; scalar_t__ log_timestamp; scalar_t__ log_pos0_crc32; scalar_t__ log_pos0; scalar_t__ log_timestamp0; } ;
struct TYPE_15__ {int type; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int /*<<< orphan*/  dtype; } ;
struct TYPE_14__ {TYPE_1__ tok; } ;
struct TYPE_13__ {int /*<<< orphan*/ * name; TYPE_5__* fields; } ;

/* Variables and functions */
 int FN ; 
 int INDEX_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_EV ; 
 int MAX_EVENT_MEM ; 
 int MAX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ans ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * common_field_names ; 
 int /*<<< orphan*/ * common_field_types ; 
 int common_fields ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 TYPE_7__ dump_expr ; 
 scalar_t__ dump_mode ; 
 char* dump_query ; 
 int dump_type ; 
 TYPE_9__* empty_desc ; 
 void* eq ; 
 void* events_mem ; 
 int evm_mx ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (TYPE_7__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/ * field_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ from_ts ; 
 TYPE_6__ header ; 
 scalar_t__ index_mode ; 
 scalar_t__ jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 scalar_t__ jump_log_ts ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__* log_crc32 ; 
 scalar_t__* log_position ; 
 scalar_t__* log_timestamp ; 
 int log_ts_exact_interval ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_type_id ; 
 int max_memory ; 
 int mean_event_size ; 
 int /*<<< orphan*/ * q_st_int ; 
 int /*<<< orphan*/ * q_st_ll ; 
 int query_memory ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int*,int) ; 
 int FUNC13 (char*,char*,int*,int*) ; 
 TYPE_5__* std_desc ; 
 scalar_t__* std_t ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 scalar_t__* time_table_log_crc32 ; 
 scalar_t__* time_table_log_position ; 
 scalar_t__* time_table_log_timestamp ; 
 int time_table_log_timestamp_size ; 
 TYPE_3__* FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_2__* types ; 
 int /*<<< orphan*/  v_int ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*) ; 
 scalar_t__ write_only ; 

int FUNC19 (kfs_file_handle_t Index) {
  FUNC2 (sizeof (long long) == sizeof (double));

  log_ts_exact_interval = 1;

  MAX_EVENT_MEM = max_memory - query_memory;
  MAX_EV = MAX_EVENT_MEM / mean_event_size;
  evm_mx = MAX_EVENT_MEM - 5;
  FUNC2 (MAX_EVENT_MEM >= (1 << 26));

  FUNC18 (log_position);
  FUNC18 (log_timestamp);
  FUNC18 (log_crc32);

  FUNC18 (time_table_log_position);
  FUNC18 (time_table_log_timestamp);
  FUNC18 (time_table_log_crc32);

  FUNC11 (&map_type_id);

  if (!write_only) {
    events_mem = FUNC3 (MAX_EVENT_MEM);
    eq = FUNC3 (sizeof (event *) * MAX_EV);
    ans = FUNC3 (sizeof (int) * MAX_EV);
  }

  int i;
  for (i = 0; i < FN; i += 1 + std_t[i]) {
    std_desc[i].type = i - FN;
    std_desc[i].name = field_names[i];

    empty_desc[i].type = i - FN;
    empty_desc[i].name = "";
  }

  /* init virtual event */
  types[0].name = FUNC4 ("virtual_event");
  types[0].fields = FUNC3 (sizeof (field_desc) * FN);
  for (i = 0; i < FN; i += 1 + std_t[i]) {
    types[0].fields[i] = std_desc[i];
  }
  types[0].fields += FN;
  for (i = 0; i < common_fields; i++) {
    FUNC1 (types, common_field_names[i], common_field_types[i]);
  }

  for (i = 0; i < FN; i += 1 + std_t[i]) {
    if (std_t[i]) {
      FUNC11 (&q_st_ll[i]);
    } else {
      FUNC10 (&q_st_int[i]);
    }
  }

  int f = FUNC8 (Index);

  if (dump_mode) {
    FUNC9();

    FUNC2 (INDEX_TYPE);
    if (header.index_type == 0) {
      FUNC7 (stderr, "You need to generate new index first.\n");
      FUNC5 (1);
    }
    int i;
    for (i = 0; i + 1 < time_table_log_timestamp_size && time_table_log_timestamp[i + 1] < from_ts; i++) {
    }

    if (FUNC15 (dump_query) == 0) {
      FUNC7 (stderr, "Dump query can't be empty.\n");
      FUNC5 (1);
    }

    char *qs[3];
    int qn;
    FUNC12 (dump_query, qs, &qn, 2);
    if (qn == 0) {
      FUNC7 (stderr, "Too much commas in dump query.\n");
      FUNC5 (1);
    }

    if (qn == 2 && FUNC14 (qs[1], "1")) {
      dump_query = qs[1];
    } else {
      dump_query = NULL;
    }

    int pos;
    if (FUNC13 (qs[0], "%d%n", &dump_type, &pos) != 1 || qs[0][pos]) {
      FUNC7 (stderr, "Can't parse [%s] as integer.\n", qs[0]);
      FUNC5 (1);
    }

    if (!(0 <= dump_type && dump_type < MAX_TYPE)) {
      FUNC7 (stderr, "Dump_type [%d] not in range [0;%d].\n", dump_type, MAX_TYPE - 1);
      FUNC5 (1);
    }

    if (dump_type != 0 && types[dump_type].name == NULL) {
      FUNC7 (stderr, "Dump_type [%d] is unknown.\n", dump_type);
      FUNC5 (1);
    }

    if (dump_query != NULL) {
      char *err = FUNC6 (&dump_expr, dump_query, &types[dump_type]);
      if (err != NULL) {
        FUNC7 (stderr, "Cannot compile expression [%s] : error [%s]\n", dump_query, err);
        FUNC5 (1);
      }

      if (FUNC0(dump_expr.root->tok.dtype)) {
        FUNC7 (stderr, "Cannot convert result of dump_query[%s] (string) to int\n", dump_query);
        FUNC5 (1);
      }
      dump_expr.root = FUNC16 (dump_expr.root, v_int);
    }

    jump_log_ts = time_table_log_timestamp[i];
    jump_log_pos = time_table_log_position[i];
    jump_log_crc32 = time_table_log_crc32[i];
//    fprintf (stderr, "%d %lld %d\n", jump_log_ts, jump_log_pos, jump_log_crc32);
  } else if (index_mode && INDEX_TYPE >= 1 && header.index_type == 0) {
    jump_log_ts = 0;
    jump_log_pos = 0;
    jump_log_crc32 = 0;
  } else if (write_only && !index_mode) {
    jump_log_ts = header.log_timestamp0;
    jump_log_pos = header.log_pos0;
    jump_log_crc32 = header.log_pos0_crc32;
  } else {
    jump_log_ts = header.log_timestamp;
    jump_log_pos = header.log_pos1;
    jump_log_crc32 = header.log_pos1_crc32;
  }
//  fprintf (stderr, "%d %lld %d\n", jump_log_ts, jump_log_pos, jump_log_crc32);

  if (f) {
    FUNC17();
  }
  return f;
}