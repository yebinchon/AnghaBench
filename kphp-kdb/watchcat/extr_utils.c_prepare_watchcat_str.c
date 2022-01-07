
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_NAME_SIZE ;
 int assert (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int get_notword (char*) ;
 int get_word (char*) ;
 int memcpy (char*,char*,int) ;
 int my_lc_str (char*,char*,int) ;
 char* prep_buf ;
 char* prep_buf_res ;
 char* prepare_str_cp1251 (char*) ;
 int stderr ;
 scalar_t__ strlen (char*) ;

char *prepare_watchcat_str (char *x, int uni) {
  if (strlen (x) >= MAX_NAME_SIZE) {
    return ((void*)0);
  }



  char delim = uni ? ' ' : '+';

  char *s = prep_buf;

  int no_nw = 1;
  const char *prev = 0;
  while (*x) {
    if (x == prev) {
      fprintf (stderr, "error at %.30s\n", x);
      exit (2);
    }
    prev = x - no_nw;
    int wl = no_nw ? 0 : get_notword (x);
    no_nw = 0;
    if (wl < 0) {
      break;
    }
    while (wl > 0 && *x != 0x1f) {
      x++;
      wl--;
    }
    if (*x == 0x1f) {
      wl = 1;
      while ((unsigned char) x[wl] >= 0x40) {
        wl++;
      }
      no_nw = 1;
    } else {
      wl = get_word (x);
    }
    if (!wl) {
      continue;
    }
    assert (wl > 0 && wl < 511);
    if (*x != 0x1f) {
      int len = my_lc_str (prep_buf_res, x, wl);
      memcpy (s, prep_buf_res, len);
      s += len;
    } else {
      memcpy (s, x, wl);
      s += wl;
    }
    *s++ = delim;

    x += wl;
  }
  *s = 0;



  char *v = uni ? prepare_str_cp1251 (prep_buf) : prep_buf;


  return v;
}
