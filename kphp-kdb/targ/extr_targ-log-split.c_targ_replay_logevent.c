
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int b; void* e; void* d; int c; scalar_t__ timestamp; } ;


 int LEV_START ;
 int LEV_TARG_STAT_LOAD ;
 int LEV_TARG_VIEWS ;
 struct lev_generic LogTs ;
 int copy_mod ;
 void* copy_rem ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int get_logrec_size (int,struct lev_generic*,int) ;
 scalar_t__ immediate_exit ;
 scalar_t__ jump_log_pos ;
 int log_cur_pos () ;
 int memcpy (struct lev_generic*,struct lev_generic*,int) ;
 int rd_bytes ;
 int rd_rec ;
 void* split_int (int) ;
 int stderr ;
 int targ_existed ;
 scalar_t__ targ_orig_size ;
 scalar_t__ want_write (int,struct lev_generic*) ;
 scalar_t__ wr_bytes ;
 int wr_rec ;
 int wr_views_rec ;
 struct lev_generic* write_alloc (int) ;

int targ_replay_logevent (struct lev_generic *E, int size) {
  int type, s;
  static int type_ok = -1;

  if (size < 4) {
    return -2;
  }

  type = *((int *)E);
  s = get_logrec_size (type, E, size);

  if (s > size || s == -2) {
    return -2;
  }

  if (s < 0) {
    if (s != -13) {
      fprintf (stderr, "error %d reading binlog at position %lld, write position %lld, type %08x (prev type %08x)\n", s, log_cur_pos(), wr_bytes + targ_orig_size, type, type_ok);
    }
    return s;
  }

  if (!targ_existed && type != LEV_START && jump_log_pos == 0) {
    fprintf (stderr, "error: first record must be a LEV_START\n");
    return -1;
  }

  if (immediate_exit) {
    fprintf (stderr, "error: first record in a binlog must be LEV_START\n");
    exit (1);
  }

  s = ((s + 3) & -4);

  rd_bytes += s;
  rd_rec++;

  type_ok = type;

  if (want_write (type, E)) {
    if (LogTs.timestamp) {
      memcpy (write_alloc (8), &LogTs, 8);
      wr_bytes += 8;
      wr_rec++;
      LogTs.timestamp = 0;
    }
    struct lev_generic *N = write_alloc (s);
    memcpy (N, E, s);
    if (type == LEV_START) {
      N->c = copy_mod;
      N->d = copy_rem;
      N->e = copy_rem+1;
    } else if (type == LEV_TARG_VIEWS) {
      wr_views_rec++;
      N->b = split_int (N->b);
    } else if (type == LEV_TARG_STAT_LOAD) {
      int i, *z = (int *) N;
      for (i = 2; i < 7; i++) {
        z[i] = split_int (z[i]);
      }
    }
    wr_bytes += s;
    wr_rec++;
  }

  return s;
}
