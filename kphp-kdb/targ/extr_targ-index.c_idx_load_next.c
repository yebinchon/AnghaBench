
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RBuff ;
 int RBuffEnd ;
 int assert (int) ;
 int fprintf (int ,char*,int,...) ;
 int idx_bytes ;
 long long idx_cur_read_pos () ;
 int idx_fd ;
 char* idx_filename ;
 int idx_metafile_pos ;
 int idx_read_pos ;
 int idx_rptr ;
 int idx_slide_read_buffer () ;
 int idx_wptr ;
 int read (int ,int,int) ;
 int stderr ;
 int verbosity ;
 int vkprintf (int,char*,long long,int,int) ;

int idx_load_next (int need_bytes) {
  assert (need_bytes > 0 && need_bytes <= RBuffEnd - RBuff);
  long long idx_cur_pos = idx_cur_read_pos ();
  if (need_bytes + idx_cur_pos > idx_bytes) {
    need_bytes = idx_bytes - idx_cur_pos;
    assert (need_bytes >= 0);
    if (!need_bytes) {
      vkprintf (4, "failed at pos %lld, ends at %lld bytes, need %d\n", idx_cur_pos, idx_bytes, need_bytes);
      return 0;
    }
  }
  assert (idx_rptr >= RBuff && idx_rptr <= idx_wptr && idx_wptr <= RBuffEnd);
  if (idx_wptr >= idx_rptr + need_bytes) {
    return idx_wptr - idx_rptr;
  }
  if (idx_rptr + need_bytes > RBuffEnd) {
    idx_slide_read_buffer ();
    assert (idx_rptr + need_bytes <= RBuffEnd);
  }
  int to_load = RBuffEnd - idx_wptr;
  long long idx_wptr_pos = idx_cur_pos + (idx_wptr - idx_rptr);
  if (idx_wptr_pos + to_load > idx_bytes) {
    to_load = idx_bytes - idx_wptr_pos;
  }
  assert (to_load > 0);
  int r = read (idx_fd, idx_wptr, to_load);
  if (r != to_load) {
    fprintf (stderr, "error reading %d bytes from snapshot %s at position %lld: only %d bytes read: %m\n", to_load, idx_filename, idx_read_pos, r);
    assert (r == to_load);
  } else if (verbosity > 3) {
    fprintf (stderr, "preloaded %d bytes from snapshot at position %lld\n", r, idx_read_pos);
  }

  idx_wptr += r;
  idx_read_pos += r;
  idx_metafile_pos += r;
  return idx_wptr - idx_rptr;
}
