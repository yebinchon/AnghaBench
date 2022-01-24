#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {int orig_file_size; TYPE_3__* F; } ;
struct TYPE_18__ {TYPE_5__* backups; TYPE_6__ S; TYPE_9__* binlog; } ;
typedef  TYPE_4__ file_t ;
struct TYPE_19__ {char* filename; TYPE_6__ S; int /*<<< orphan*/  status; struct TYPE_19__* next; } ;
typedef  TYPE_5__ backup_file_t ;
struct TYPE_21__ {TYPE_1__* info; } ;
struct TYPE_17__ {TYPE_2__* info; } ;
struct TYPE_16__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  preloaded_bytes; int /*<<< orphan*/  start; } ;
struct TYPE_15__ {int /*<<< orphan*/  filename; } ;
struct TYPE_14__ {scalar_t__ max_errors_limit; scalar_t__ errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* backups_dir ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bs_differ ; 
 int /*<<< orphan*/  bs_io_error ; 
 int /*<<< orphan*/  bs_larger ; 
 int /*<<< orphan*/  bs_ok ; 
 int /*<<< orphan*/  bs_same_inode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_5__* FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,long long,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ max_log_errors ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*,int,char*,char*,char*) ; 
 TYPE_11__ stats ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*,TYPE_9__*,char*,int) ; 
 scalar_t__ FUNC12 (TYPE_6__*,TYPE_6__*) ; 
 int FUNC13 (char*) ; 
 char* FUNC14 (int) ; 

__attribute__((used)) static int FUNC15 (file_t *F) {
  backup_file_t *f;
  FUNC8 ();
  if (max_log_errors) {
    stats.max_errors_limit = stats.errors + max_log_errors;
    if (stats.max_errors_limit < 0) {
      FUNC8 ();
    }
  }

  FUNC2 ();
  /* open backup before openning binlog slice */
  char *p = FUNC1 (F->binlog->info->filename);
  F->backups = FUNC3 (p, FUNC13 (p), 0);
  for (f = F->backups; f != NULL; f = f->next) {
    int l = FUNC13 (f->filename) + FUNC13 (backups_dir) + 1;
    char *a = FUNC14 (l + 1);
    FUNC0 (FUNC9 (a, l + 1, "%s/%s", backups_dir, f->filename) == l);
    if (FUNC11 (&f->S, 0, a, 1) < 0) {
      f->status |= bs_io_error;
    }
  }

  if (FUNC11 (&F->S, F->binlog, 0, 0) < 0) {
    FUNC5 ("openning binlog file '%s' in read-only mode failed.", F->binlog->info->filename);
    return -1;
  }

  if (F->S.orig_file_size % 4) {
    FUNC5 ("size(%lld) of '%s' isn't multiple of 4.", (long long) F->S.orig_file_size, F->S.F->info->filename);
    return -1;
  }

  for (f = F->backups; f != NULL; f = f->next) {
    if (!f->status) {
      if (FUNC12 (&F->S, &f->S)) {
        FUNC4 ("backup '%s' and binlog '%s' have equal inodes.", f->S.F->info->filename, F->S.F->info->filename);
        f->status |= bs_same_inode;
      }
      if (f->S.orig_file_size > F->S.orig_file_size) {
        f->status |= bs_larger;
      }
      if (f->status == bs_ok && FUNC10 (&f->S) && FUNC10 (&F->S)) {
        if (f->S.orig_file_size != F->S.orig_file_size) {
          FUNC6 ("backup '%s' and binlog '%s' have different original file size (%lld and %lld).", f->S.F->info->filename, F->S.F->info->filename, f->S.orig_file_size, F->S.orig_file_size);
          f->status |= bs_differ;
        } else if (f->S.F->info->preloaded_bytes != F->S.F->info->preloaded_bytes) {
          FUNC6 ("backup '%s' and binlog '%s' have different header size (%d and %d).", f->S.F->info->filename, F->S.F->info->filename, f->S.F->info->preloaded_bytes, F->S.F->info->preloaded_bytes);
          f->status |= bs_differ;
        } else if (FUNC7 (f->S.F->info->start, F->S.F->info->start, F->S.F->info->preloaded_bytes)) {
          FUNC6 ("backup '%s' and binlog '%s' have different headers.", f->S.F->info->filename, F->S.F->info->filename);
          f->status |= bs_differ;
        }
      }
    }
  }

  for (f = F->backups; f != NULL; f = f->next) {
    if (f->status != bs_ok) {
      continue;
    }
    backup_file_t *g;
    for (g = f->next; g != NULL; g = g->next) {
      if (g->status == bs_ok && FUNC12 (&f->S, &g->S)) {
        f->status |= bs_same_inode;
        g->status |= bs_same_inode;
        FUNC4 ("backup '%s' and backup '%s' have equal inodes.", f->S.F->info->filename, g->S.F->info->filename);
      }
    }
  }

  return 0;
}