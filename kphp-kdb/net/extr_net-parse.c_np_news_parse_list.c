
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_reader {int dummy; } ;
typedef int netbuffer_t ;
typedef int nb_iterator_t ;


 int advance_skip_read_ptr (int *,int const) ;
 int nb_reader_parse_int (struct nb_reader*,int*,int*) ;
 int nb_reader_set (struct nb_reader*,int *,int const) ;
 int const nbit_read_in (int *,int*,int const) ;
 int nbit_set (int *,int *) ;

int np_news_parse_list (int *Res, const int max_size, const int arity, netbuffer_t *In, const int bytes) {
  if (!bytes) {
    return 0;
  }
  nb_iterator_t it;
  if (bytes >= 4) {
    int x;
    nbit_set (&it, In);
    if (nbit_read_in (&it, &x, 4) != 4) {
      advance_skip_read_ptr (In, bytes);
      return -1;
    }
    if (x == 0x30303030 + ((arity - 1) << 24)) {
      x = (bytes - 4) >> 2;

      if ((bytes & 3) || max_size < x || x % arity || nbit_read_in (&it, &Res[0], bytes - 4) != bytes - 4) {
        advance_skip_read_ptr (In, bytes);
        return -1;
      }

      advance_skip_read_ptr (In, bytes);
      return x / arity;
    }
  }

  struct nb_reader jt;
  nb_reader_set (&jt, In, bytes);
  int ch = 0, t = 0, s = 0;
  for (;;) {
    if (s >= max_size || !nb_reader_parse_int (&jt, &Res[s++], &ch)) {
      advance_skip_read_ptr (In, bytes);
      return -1;
    }
    if (ch < 0) {
      break;
    }
    if (++t == arity) {
      t = 0;
    }
    if (ch != (t ? '_' : ',')) {
      advance_skip_read_ptr (In, bytes);
      return -1;
    }
  }
  advance_skip_read_ptr (In, bytes);
  return (s % arity) ? -1 : s / arity;
}
