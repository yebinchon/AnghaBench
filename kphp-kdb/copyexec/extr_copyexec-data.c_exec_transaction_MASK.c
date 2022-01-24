#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int status; int result; int mask; scalar_t__ transaction_id; long long st_dev; long long st_ino; int /*<<< orphan*/  binlog_pos; struct TYPE_16__* next; scalar_t__ pid; void* creation_time; } ;
typedef  TYPE_1__ transaction_t ;
struct stat {scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct lev_copyexec_main_transaction_status {int result; int mask; scalar_t__ pid; long long st_dev; long long st_ino; scalar_t__ transaction_id; void* creation_time; int /*<<< orphan*/  binlog_pos; } ;
struct lev_copyexec_aux_transaction_header {int mask; } ;
struct buffered_logevent {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_17__ {scalar_t__ transaction_id; int /*<<< orphan*/  binlog_pos; int /*<<< orphan*/  key_id; int /*<<< orphan*/  ilen; int /*<<< orphan*/  input; } ;
typedef  TYPE_2__ replay_transaction_info_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  lev_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  Binlog ; 
 int /*<<< orphan*/  COPYEXEC_ERR_CHDIR ; 
 int /*<<< orphan*/  COPYEXEC_ERR_CREAT ; 
 int /*<<< orphan*/  COPYEXEC_ERR_FORK ; 
 int /*<<< orphan*/  COPYEXEC_ERR_FSTAT ; 
 int /*<<< orphan*/  COPYEXEC_ERR_MKDIR ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  LEV_COPYEXEC_MAIN_TRANSACTION_STATUS ; 
 int MASK_WAITING_TRANSACTION ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int SIGINT ; 
 int SIGTERM ; 
 int SIGUSR2 ; 
 struct lev_copyexec_main_transaction_status* FUNC0 (struct buffered_logevent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ auto_running_list ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ child_running_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ cmd_id ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  copyexec_transaction_process_sigint_handler ; 
 int cur_transaction_binlog_name ; 
 int /*<<< orphan*/  cur_transaction_hash ; 
 scalar_t__ cur_transaction_id ; 
 int cur_transaction_result ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned char**,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ epoll_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ fd_aux_binlog ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 
 scalar_t__ fd_transaction_logevents ; 
 scalar_t__ first_transaction_id ; 
 int /*<<< orphan*/  FUNC13 (struct buffered_logevent*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*) ; 
 scalar_t__ FUNC16 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 void* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int instance_mask ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC28 (int,int,int) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC31 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 scalar_t__ sigterm_receiver_pid ; 
 scalar_t__ FUNC34 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,TYPE_1__*) ; 
 struct lev_copyexec_main_transaction_status* FUNC36 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transaction_dir ; 
 int transaction_interrupting_signal ; 
 int FUNC39 (void*,int) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_1__*) ; 
 scalar_t__ ts_cancelled ; 
 int /*<<< orphan*/  ts_decryption_failed ; 
 scalar_t__ ts_failed ; 
 int /*<<< orphan*/  ts_ignored ; 
 scalar_t__ ts_interrupted ; 
 int /*<<< orphan*/  ts_running ; 
 scalar_t__ ts_terminated ; 
 scalar_t__ ts_unset ; 
 int /*<<< orphan*/  FUNC41 (int,char*,...) ; 

void FUNC42 (replay_transaction_info_t *I) {
  if (I->transaction_id < first_transaction_id) {
    FUNC41 (3, "skip tr%d (first_transaction_id = %d)\n", I->transaction_id, first_transaction_id);
    return;
  }

  FUNC41 (3, "exec_transaction (id = %d)\n", I->transaction_id);
  // check status of current transaction
  transaction_t *T = FUNC21 (I->transaction_id, 0);
  if (T != NULL) {
    if (!FUNC40 (T)) {
      FUNC41 (3, "skip tr%d (status = %d)\n", I->transaction_id, T->status);
      return;
    }
  }

  if (T == NULL) {
    T = FUNC21 (I->transaction_id, 1);
    if (T == NULL) {
      FUNC6 ();
    }
    T->status = ts_unset;
  }
  T->binlog_pos = I->binlog_pos;

  // try decrypt transaction
  unsigned char *b;
  int blen;
  int r = FUNC8 (I->input, I->ilen, I->key_id, I->binlog_pos, I->transaction_id, &b, &blen);
  if (r < 0) {
    FUNC26 ("decrypt_transaction (key_id: %d, binlog_pos: %lld, transaction_id: %d) returns %s.\n", I->key_id, I->binlog_pos, I->transaction_id, FUNC7 (r));
    FUNC24 ();

    FUNC38 (T, ts_decryption_failed);
    struct lev_copyexec_main_transaction_status *E = FUNC36 (T);
    E->binlog_pos = T->binlog_pos;
    E->result = T->result = -r;
    return;
  }

  FUNC41 (3, "transaction was successfully decrypted.\n");

  // check transaction mask
  struct lev_copyexec_aux_transaction_header *B = (struct lev_copyexec_aux_transaction_header *) b;
  T->mask = B->mask;
  if (!(T->mask & instance_mask) || FUNC34 (b, blen)) {
    FUNC38 (T, ts_ignored);
    struct lev_copyexec_main_transaction_status *E = FUNC36 (T);
    E->binlog_pos = T->binlog_pos;
    E->mask = T->mask;
    FUNC15 (b);
    return;
  }

  // mkdir transaction_dir
  FUNC20 (T, transaction_dir);
  FUNC41 (3, "transaction_dir = %s\n", transaction_dir);

  if (T->status != ts_unset) {
    FUNC41 (3, "exec_transaction: T->status = %d (T->status != ts_unset).\n", (int) T->status);
    FUNC9 ();
  }

  if (FUNC27 (transaction_dir, 0700) < 0) {
    FUNC26 ("mkdir %s failed. %m\n", transaction_dir);
    FUNC24 ();
    FUNC1 (T, COPYEXEC_ERR_MKDIR);
    FUNC15 (b);
    return;
  }

  // tmp_dir isn't relative, since realpath function was used in copyexec-engine.c
  // chdir transaction_dir
  if (FUNC3 (transaction_dir) < 0) {
    FUNC26 ("chdir %s failed. %m\n", transaction_dir);
    FUNC24 ();
    FUNC1 (T, COPYEXEC_ERR_CHDIR);
    FUNC9 ();
    FUNC15 (b);
    return;
  }

  FUNC19 (T, cur_transaction_binlog_name);
  FUNC41 (3, "[tr%d] binlog_name: %s\n", T->transaction_id, cur_transaction_binlog_name);

  while (1) {
    fd_transaction_logevents = FUNC28 (cur_transaction_binlog_name, O_WRONLY | O_CREAT | O_TRUNC | O_EXCL, 0400);//TODO: check 0400 mode
    if (fd_transaction_logevents < 0 && errno == EINTR) {
      continue;
    }
    break;
  }

  if (fd_transaction_logevents < 0) {
    FUNC26 ("creat (%s) failed. %m\n", cur_transaction_binlog_name);
    FUNC24 ();
    FUNC1 (T, COPYEXEC_ERR_CREAT);
    FUNC9 ();
    FUNC15 (b);
    return ;
  }

  struct stat st;
  if (FUNC16 (fd_transaction_logevents, &st) < 0) {
    FUNC26 ("fstat (%s) failed. %m\n", cur_transaction_binlog_name);
    FUNC24 ();
    FUNC1 (T, COPYEXEC_ERR_FSTAT);
    FUNC9 ();
    FUNC15 (b);
    return;
  }

  sigset_t signal_set;
  FUNC33 (&signal_set);
  FUNC32 (&signal_set, SIGINT);
  FUNC32 (&signal_set, SIGTERM);
  struct sigaction act;
  act.sa_handler = copyexec_transaction_process_sigint_handler;
  act.sa_mask = signal_set;
  act.sa_flags = 0;

  // fork
  pid_t p = FUNC14 ();
  if (p < 0) {
    FUNC26 ("fork () failed. %m\n");
    FUNC24();
    FUNC1 (T, COPYEXEC_ERR_FORK);
    FUNC9 ();
    FUNC15 (b);
    return;
  }

  if (p > 0) {
    T->creation_time = FUNC18 (p);
    FUNC15 (b);
    FUNC12 (&fd_transaction_logevents);
    T->pid = p;
    FUNC38 (T, ts_running);
    FUNC35 (&child_running_list, T);
    struct lev_copyexec_main_transaction_status *A = FUNC36 (T);
    A->binlog_pos = T->binlog_pos;
    A->mask = T->mask;
    A->pid = p;
    A->creation_time = T->creation_time;
    A->st_dev = T->st_dev = (long long) st.st_dev;
    A->st_ino = T->st_ino = (long long) st.st_ino;
    return;
  }

  FUNC2 (!FUNC31 (SIGINT, &act, NULL));
  FUNC2 (!FUNC31 (SIGTERM, &act, NULL));

  FUNC29 ();

  //did any SIGINT or SIGTERM signal sent before sigaction call?
  if (sigterm_receiver_pid == FUNC23 () && !transaction_interrupting_signal) {
    transaction_interrupting_signal = SIGTERM;
  }

  FUNC30 ();

  /* close unused in transaction process files */
  FUNC4 (Binlog, 1);
  FUNC12 (&fd_aux_binlog);
  FUNC12 (&epoll_fd);
  if (sfd) {
    FUNC12 (&sfd);
  }
  FUNC5 (fd_transaction_logevents);

  T->pid = FUNC23 ();
  FUNC22 (T, cur_transaction_hash);
  cmd_id = 0;
  cur_transaction_id = I->transaction_id;
  FUNC37 (cur_transaction_id);

  if (T->mask & MASK_WAITING_TRANSACTION) {
    transaction_t *x;
    //wait auto transactions
    for (x = auto_running_list.next; x != &auto_running_list; x = x->next) {
      if (x->transaction_id < cur_transaction_id) {
        FUNC10 (x->transaction_id);
      }
    }
    //wait child transactions
    for (x = child_running_list.next; x != &child_running_list; x = x->next) {
      if (x->transaction_id < cur_transaction_id) { /* this check is needed for the case rerunable transaction */
        FUNC10 (x->transaction_id);
      }
    }
  }


  void *bend = b + blen - 20, *E = b + sizeof (struct lev_copyexec_aux_transaction_header);
  int res = 0;

  // main loop (replay_log)
  while (E < bend && !transaction_interrupting_signal) {
    if (FUNC25 ()) {
      transaction_interrupting_signal = SIGUSR2;
      break;
    }
    int sz = FUNC39 (E, bend - E);
    if (sz < 0) {
      res = sz;
      break;
    }
    sz = (sz + 3) & -4;
    E += sz;
  }

  FUNC15 (b);
  if (res < 0) {
    FUNC41 (1, "transaction: %d, res = %d\n", cur_transaction_id, res);
  }

  lev_type_t tp = LEV_COPYEXEC_MAIN_TRANSACTION_STATUS;
  if (transaction_interrupting_signal) {
    if (cmd_id) {
      tp += ts_interrupted;
    } else {
      tp += ts_cancelled;
      cur_transaction_result = transaction_interrupting_signal << 8;
    }
  } else {
    tp += (res < 0) ? ts_failed : ts_terminated;
  }

  struct buffered_logevent L;
  struct lev_copyexec_main_transaction_status *A = FUNC0 (&L, tp, sizeof (*A));
  A->transaction_id = T->transaction_id;
  A->binlog_pos = T->binlog_pos;
  A->mask = T->mask;
  A->pid = FUNC23 ();
  A->creation_time = FUNC18 (A->pid);
  A->result = T->result = cur_transaction_result;
  A->st_dev = (long long) st.st_dev;
  A->st_ino = (long long) st.st_ino;

  FUNC13 (&L);

  FUNC17 (fd_transaction_logevents);
  FUNC12 (&fd_transaction_logevents);

  FUNC11 (0);
}