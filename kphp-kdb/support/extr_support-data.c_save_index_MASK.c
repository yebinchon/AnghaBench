#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; int /*<<< orphan*/  log_timestamp; scalar_t__ log_pos1; int /*<<< orphan*/  created_at; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ index_header ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_8__ {int /*<<< orphan*/  replica_prefix; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SUPPORT_INDEX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_disabled ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* engine_snapshot_replica ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int) ; 
 long long FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  log_crc32_complement ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  log_last_ts ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 long long FUNC9 (int,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ verbosity ; 
 int FUNC18 (int,TYPE_1__*,int) ; 

int FUNC19 (void) {
  char *newidxname = NULL;

  FUNC2 ("save_index\n");
  if (engine_snapshot_replica) {
    newidxname = FUNC7 (engine_snapshot_replica, FUNC8(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC4 (stderr, "cannot write index: cannot compute its name\n");
    FUNC3 (1);
  }

  if (FUNC8() == jump_log_pos) {
    FUNC4 (stderr, "skipping generation of new snapshot %s for position %ld: snapshot for this position already exists\n",
       newidxname, jump_log_pos);
    return 0;
  }

  if (verbosity > 0) {
    FUNC4 (stderr, "creating index %s at log position %ld\n", newidxname, FUNC8());
  }

  if (!binlog_disabled) {
    FUNC14();
  } else {
    FUNC13 (0);
  }

  index_header header;
  FUNC10 (&header, 0, sizeof (header));

  fd[1] = FUNC11 (newidxname, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
  if (fd[1] < 0) {
    FUNC4 (stderr, "cannot create new index file %s: %m\n", newidxname);
    FUNC3 (1);
  }

  header.magic = SUPPORT_INDEX_MAGIC;
  header.created_at = FUNC16 (NULL);

  long long fCurr = FUNC6 (&header);
  FUNC0 (FUNC9 (fd[1], fCurr, SEEK_SET) == fCurr);

  // write header
  header.log_pos1 = FUNC8();
  header.log_timestamp = log_last_ts;
  header.log_split_min = log_split_min;
  header.log_split_max = log_split_max;
  header.log_split_mod = log_split_mod;
  FUNC13 (0);
  header.log_pos1_crc32 = ~log_crc32_complement;

  FUNC0 (FUNC9 (fd[1], 0, SEEK_SET) == 0);
  FUNC0 (FUNC18 (fd[1], &header, sizeof (header)) == sizeof (header));

  FUNC0 (FUNC5 (fd[1]) >= 0);
  FUNC0 (FUNC1 (fd[1]) >= 0);
  fd[1] = -1;

  if (FUNC15 (newidxname)) {
    FUNC4 (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    FUNC17 (newidxname);
    FUNC3 (1);
  }

  FUNC12 (newidxname);
  return 0;
}