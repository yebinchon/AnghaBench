
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,int,scalar_t__,int,int) ;
 int get_logrec_size (int,scalar_t__,int) ;
 int memcpy (int ,scalar_t__,int) ;
 int prepare_read () ;
 int rd_bytes ;
 int rd_rec ;
 scalar_t__ rend ;
 scalar_t__ rptr ;
 int stderr ;
 scalar_t__ targ_orig_size ;
 scalar_t__ want_write (int,scalar_t__) ;
 scalar_t__ wr_bytes ;
 int wr_rec ;
 int write_alloc (int) ;

int process_record (void) {
  int size, type, s;
  static int type_ok = -1;

  prepare_read();
  if (rptr == rend) {
    return -1;
  }
  size = rend - rptr;
  if (size < 4) {
    return -2;
  }

  type = *((int *) rptr);
  s = get_logrec_size (type, rptr, size);

  if (s > size) {
    s = -2;
  }

  if (s < 0) {
    fprintf (stderr, "error %d reading binlog at position %lld, write position %lld, type %08x (prev type %08x)\n", s, rd_bytes, wr_bytes + targ_orig_size, type, type_ok);
    return s;
  }

  type_ok = type;

  s = ((s + 3) & -4);

  if (want_write (type, rptr)) {
    memcpy (write_alloc (s), rptr, s);
    wr_bytes += s;
    wr_rec++;
  }

  rd_bytes += s;
  rd_rec++;
  rptr += s;

  return 0;
}
