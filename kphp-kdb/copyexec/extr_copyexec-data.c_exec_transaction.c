
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int status; int result; int mask; scalar_t__ transaction_id; long long st_dev; long long st_ino; int binlog_pos; struct TYPE_16__* next; scalar_t__ pid; void* creation_time; } ;
typedef TYPE_1__ transaction_t ;
struct stat {scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct lev_copyexec_main_transaction_status {int result; int mask; scalar_t__ pid; long long st_dev; long long st_ino; scalar_t__ transaction_id; void* creation_time; int binlog_pos; } ;
struct lev_copyexec_aux_transaction_header {int mask; } ;
struct buffered_logevent {int dummy; } ;
typedef int sigset_t ;
struct TYPE_17__ {scalar_t__ transaction_id; int binlog_pos; int key_id; int ilen; int input; } ;
typedef TYPE_2__ replay_transaction_info_t ;
typedef scalar_t__ pid_t ;
typedef int lev_type_t ;


 int Binlog ;
 int COPYEXEC_ERR_CHDIR ;
 int COPYEXEC_ERR_CREAT ;
 int COPYEXEC_ERR_FORK ;
 int COPYEXEC_ERR_FSTAT ;
 int COPYEXEC_ERR_MKDIR ;
 scalar_t__ EINTR ;
 int LEV_COPYEXEC_MAIN_TRANSACTION_STATUS ;
 int MASK_WAITING_TRANSACTION ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR2 ;
 struct lev_copyexec_main_transaction_status* alloc_buffered_logevent (struct buffered_logevent*,int ,int) ;
 int alloc_io_failed_logevent (TYPE_1__*,int ) ;
 int assert (int) ;
 TYPE_1__ auto_running_list ;
 scalar_t__ chdir (int ) ;
 TYPE_1__ child_running_list ;
 int close_binlog (int ,int) ;
 int close_unused_fd (scalar_t__) ;
 scalar_t__ cmd_id ;
 int copyexec_abort () ;
 int copyexec_strerror (int) ;
 int copyexec_transaction_process_sigint_handler ;
 int cur_transaction_binlog_name ;
 int cur_transaction_hash ;
 scalar_t__ cur_transaction_id ;
 int cur_transaction_result ;
 int decrypt_transaction (int ,int ,int ,int ,scalar_t__,unsigned char**,int*) ;
 int delete_transaction_dir () ;
 int do_wait (scalar_t__) ;
 scalar_t__ epoll_fd ;
 scalar_t__ errno ;
 int exit (int ) ;
 scalar_t__ fd_aux_binlog ;
 int fd_close (scalar_t__*) ;
 scalar_t__ fd_transaction_logevents ;
 scalar_t__ first_transaction_id ;
 int flush_logevent_to_file (struct buffered_logevent*) ;
 scalar_t__ fork () ;
 int free (unsigned char*) ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 int fsync (scalar_t__) ;
 void* get_process_creation_time (scalar_t__) ;
 int get_transaction_binlog_name (TYPE_1__*,int) ;
 int get_transaction_dir (TYPE_1__*,int ) ;
 TYPE_1__* get_transaction_f (scalar_t__,int) ;
 int get_transaction_hash (TYPE_1__*,int ) ;
 scalar_t__ getpid () ;
 int handle_failure () ;
 int instance_mask ;
 scalar_t__ interrupted_by_cancelled () ;
 int kprintf (char*,...) ;
 scalar_t__ mkdir (int ,int) ;
 scalar_t__ open (int,int,int) ;
 int set_sigusr1_handler () ;
 int setsid () ;
 scalar_t__ sfd ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigterm_receiver_pid ;
 scalar_t__ synchronization_point_transaction (unsigned char*,int) ;
 int tlist_insert (TYPE_1__*,TYPE_1__*) ;
 struct lev_copyexec_main_transaction_status* transaction_alloc_log_event_status (TYPE_1__*) ;
 int transaction_change_process_name (scalar_t__) ;
 int transaction_change_status (TYPE_1__*,int ) ;
 int transaction_dir ;
 int transaction_interrupting_signal ;
 int transaction_replay_logevent (void*,int) ;
 int transaction_want_exec (TYPE_1__*) ;
 scalar_t__ ts_cancelled ;
 int ts_decryption_failed ;
 scalar_t__ ts_failed ;
 int ts_ignored ;
 scalar_t__ ts_interrupted ;
 int ts_running ;
 scalar_t__ ts_terminated ;
 scalar_t__ ts_unset ;
 int vkprintf (int,char*,...) ;

void exec_transaction (replay_transaction_info_t *I) {
  if (I->transaction_id < first_transaction_id) {
    vkprintf (3, "skip tr%d (first_transaction_id = %d)\n", I->transaction_id, first_transaction_id);
    return;
  }

  vkprintf (3, "exec_transaction (id = %d)\n", I->transaction_id);

  transaction_t *T = get_transaction_f (I->transaction_id, 0);
  if (T != ((void*)0)) {
    if (!transaction_want_exec (T)) {
      vkprintf (3, "skip tr%d (status = %d)\n", I->transaction_id, T->status);
      return;
    }
  }

  if (T == ((void*)0)) {
    T = get_transaction_f (I->transaction_id, 1);
    if (T == ((void*)0)) {
      copyexec_abort ();
    }
    T->status = ts_unset;
  }
  T->binlog_pos = I->binlog_pos;


  unsigned char *b;
  int blen;
  int r = decrypt_transaction (I->input, I->ilen, I->key_id, I->binlog_pos, I->transaction_id, &b, &blen);
  if (r < 0) {
    kprintf ("decrypt_transaction (key_id: %d, binlog_pos: %lld, transaction_id: %d) returns %s.\n", I->key_id, I->binlog_pos, I->transaction_id, copyexec_strerror (r));
    handle_failure ();

    transaction_change_status (T, ts_decryption_failed);
    struct lev_copyexec_main_transaction_status *E = transaction_alloc_log_event_status (T);
    E->binlog_pos = T->binlog_pos;
    E->result = T->result = -r;
    return;
  }

  vkprintf (3, "transaction was successfully decrypted.\n");


  struct lev_copyexec_aux_transaction_header *B = (struct lev_copyexec_aux_transaction_header *) b;
  T->mask = B->mask;
  if (!(T->mask & instance_mask) || synchronization_point_transaction (b, blen)) {
    transaction_change_status (T, ts_ignored);
    struct lev_copyexec_main_transaction_status *E = transaction_alloc_log_event_status (T);
    E->binlog_pos = T->binlog_pos;
    E->mask = T->mask;
    free (b);
    return;
  }


  get_transaction_dir (T, transaction_dir);
  vkprintf (3, "transaction_dir = %s\n", transaction_dir);

  if (T->status != ts_unset) {
    vkprintf (3, "exec_transaction: T->status = %d (T->status != ts_unset).\n", (int) T->status);
    delete_transaction_dir ();
  }

  if (mkdir (transaction_dir, 0700) < 0) {
    kprintf ("mkdir %s failed. %m\n", transaction_dir);
    handle_failure ();
    alloc_io_failed_logevent (T, COPYEXEC_ERR_MKDIR);
    free (b);
    return;
  }



  if (chdir (transaction_dir) < 0) {
    kprintf ("chdir %s failed. %m\n", transaction_dir);
    handle_failure ();
    alloc_io_failed_logevent (T, COPYEXEC_ERR_CHDIR);
    delete_transaction_dir ();
    free (b);
    return;
  }

  get_transaction_binlog_name (T, cur_transaction_binlog_name);
  vkprintf (3, "[tr%d] binlog_name: %s\n", T->transaction_id, cur_transaction_binlog_name);

  while (1) {
    fd_transaction_logevents = open (cur_transaction_binlog_name, O_WRONLY | O_CREAT | O_TRUNC | O_EXCL, 0400);
    if (fd_transaction_logevents < 0 && errno == EINTR) {
      continue;
    }
    break;
  }

  if (fd_transaction_logevents < 0) {
    kprintf ("creat (%s) failed. %m\n", cur_transaction_binlog_name);
    handle_failure ();
    alloc_io_failed_logevent (T, COPYEXEC_ERR_CREAT);
    delete_transaction_dir ();
    free (b);
    return ;
  }

  struct stat st;
  if (fstat (fd_transaction_logevents, &st) < 0) {
    kprintf ("fstat (%s) failed. %m\n", cur_transaction_binlog_name);
    handle_failure ();
    alloc_io_failed_logevent (T, COPYEXEC_ERR_FSTAT);
    delete_transaction_dir ();
    free (b);
    return;
  }

  sigset_t signal_set;
  sigemptyset (&signal_set);
  sigaddset (&signal_set, SIGINT);
  sigaddset (&signal_set, SIGTERM);
  struct sigaction act;
  act.sa_handler = copyexec_transaction_process_sigint_handler;
  act.sa_mask = signal_set;
  act.sa_flags = 0;


  pid_t p = fork ();
  if (p < 0) {
    kprintf ("fork () failed. %m\n");
    handle_failure();
    alloc_io_failed_logevent (T, COPYEXEC_ERR_FORK);
    delete_transaction_dir ();
    free (b);
    return;
  }

  if (p > 0) {
    T->creation_time = get_process_creation_time (p);
    free (b);
    fd_close (&fd_transaction_logevents);
    T->pid = p;
    transaction_change_status (T, ts_running);
    tlist_insert (&child_running_list, T);
    struct lev_copyexec_main_transaction_status *A = transaction_alloc_log_event_status (T);
    A->binlog_pos = T->binlog_pos;
    A->mask = T->mask;
    A->pid = p;
    A->creation_time = T->creation_time;
    A->st_dev = T->st_dev = (long long) st.st_dev;
    A->st_ino = T->st_ino = (long long) st.st_ino;
    return;
  }

  assert (!sigaction (SIGINT, &act, ((void*)0)));
  assert (!sigaction (SIGTERM, &act, ((void*)0)));

  set_sigusr1_handler ();


  if (sigterm_receiver_pid == getpid () && !transaction_interrupting_signal) {
    transaction_interrupting_signal = SIGTERM;
  }

  setsid ();


  close_binlog (Binlog, 1);
  fd_close (&fd_aux_binlog);
  fd_close (&epoll_fd);
  if (sfd) {
    fd_close (&sfd);
  }
  close_unused_fd (fd_transaction_logevents);

  T->pid = getpid ();
  get_transaction_hash (T, cur_transaction_hash);
  cmd_id = 0;
  cur_transaction_id = I->transaction_id;
  transaction_change_process_name (cur_transaction_id);

  if (T->mask & MASK_WAITING_TRANSACTION) {
    transaction_t *x;

    for (x = auto_running_list.next; x != &auto_running_list; x = x->next) {
      if (x->transaction_id < cur_transaction_id) {
        do_wait (x->transaction_id);
      }
    }

    for (x = child_running_list.next; x != &child_running_list; x = x->next) {
      if (x->transaction_id < cur_transaction_id) {
        do_wait (x->transaction_id);
      }
    }
  }


  void *bend = b + blen - 20, *E = b + sizeof (struct lev_copyexec_aux_transaction_header);
  int res = 0;


  while (E < bend && !transaction_interrupting_signal) {
    if (interrupted_by_cancelled ()) {
      transaction_interrupting_signal = SIGUSR2;
      break;
    }
    int sz = transaction_replay_logevent (E, bend - E);
    if (sz < 0) {
      res = sz;
      break;
    }
    sz = (sz + 3) & -4;
    E += sz;
  }

  free (b);
  if (res < 0) {
    vkprintf (1, "transaction: %d, res = %d\n", cur_transaction_id, res);
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
  struct lev_copyexec_main_transaction_status *A = alloc_buffered_logevent (&L, tp, sizeof (*A));
  A->transaction_id = T->transaction_id;
  A->binlog_pos = T->binlog_pos;
  A->mask = T->mask;
  A->pid = getpid ();
  A->creation_time = get_process_creation_time (A->pid);
  A->result = T->result = cur_transaction_result;
  A->st_dev = (long long) st.st_dev;
  A->st_ino = (long long) st.st_ino;

  flush_logevent_to_file (&L);

  fsync (fd_transaction_logevents);
  fd_close (&fd_transaction_logevents);

  exit (0);
}
