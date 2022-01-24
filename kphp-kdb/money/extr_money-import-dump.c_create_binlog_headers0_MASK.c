#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int raw_size; int total_copies; int schema_id; int extra_bytes; int split_mod; int split_min; int /*<<< orphan*/  split_max; int /*<<< orphan*/  schema_extra; int /*<<< orphan*/  slice_creator; int /*<<< orphan*/  creator; int /*<<< orphan*/  modified; int /*<<< orphan*/  created; int /*<<< orphan*/  slice_created; int /*<<< orphan*/  replica_created; int /*<<< orphan*/  slice_name; int /*<<< orphan*/  table_name; int /*<<< orphan*/  table_id_hash; void* slice_id_hash; void* replica_id_hash; void* file_id_hash; int /*<<< orphan*/  header_seq_num; int /*<<< orphan*/  kfs_file_type; } ;

/* Variables and functions */
 TYPE_1__* KHDR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int binlog_headers ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* default_progname ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* kfs_Hdr ; 
 int /*<<< orphan*/  kfs_binlog ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  split_max ; 
 int split_min ; 
 int split_mod ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ stdout_mode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  targ_fd ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC12 (int schema_id, char *schema_str) {
  FUNC0 (!binlog_headers && !KHDR);

  if (stdout_mode) {
    return;
  }

  binlog_headers = 2;
  FUNC1 (kfs_Hdr);

  KHDR = kfs_Hdr;

  KHDR->kfs_file_type = kfs_binlog;
  KHDR->modified = FUNC10 (0);
  KHDR->header_seq_num++;

  KHDR->file_id_hash = FUNC3 ();
  KHDR->replica_id_hash = KHDR->slice_id_hash = FUNC3 ();

  KHDR->table_id_hash = FUNC4 ("money");
  FUNC8 (KHDR->table_name, "money");
  if (split_mod > 1) {
    FUNC7 (KHDR->slice_name, "money%03d", split_min);
  } else {
    FUNC8 (KHDR->slice_name, "money");
  }

  KHDR->raw_size = 8192;
  KHDR->replica_created = KHDR->slice_created = KHDR->created = KHDR->modified;

  KHDR->total_copies = 1;

  FUNC8 (KHDR->creator, default_progname);
  FUNC8 (KHDR->slice_creator, default_progname);

  KHDR->schema_id = schema_id;
  if (schema_str) {
    KHDR->extra_bytes = FUNC9 (schema_str);
    if (KHDR->extra_bytes > 512) {
      KHDR->extra_bytes = 512;
    }
    FUNC6 (KHDR->schema_extra, schema_str, KHDR->extra_bytes);
  }

  KHDR->split_mod = split_mod;
  KHDR->split_min = split_min;
  KHDR->split_max = split_max;

  FUNC2 (KHDR);

  FUNC0 (FUNC5 (targ_fd, 0, SEEK_SET) == 0);
  FUNC0 (FUNC11 (targ_fd, kfs_Hdr, 4096) == 4096);
  FUNC0 (FUNC11 (targ_fd, kfs_Hdr, 4096) == 4096);
}