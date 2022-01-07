
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int advance_write_ptr (int *,int) ;
 int fprintf (int ,char*,int) ;
 char* get_write_ptr (int *,int) ;
 int memcpy (char*,char*,int) ;
 int return_one_key (struct connection*,char const*,char*,int) ;
 size_t sprintf (char*,char*,long long const) ;
 int stderr ;
 scalar_t__ verbosity ;
 int write_out (int *,char const*,int) ;

int return_one_key_list_long (struct connection *c, const char *key, int key_len, int res, int mode, const long long *R, int R_cnt) {
  int w, i;
  static char buff[16];

  if (verbosity > 0) {
    fprintf (stderr, "result = %d\n", res);
  }

  if (!R_cnt) {
    if (res == 0x7fffffff) {
      return return_one_key (c, key, "", 0);
    }
    if (mode < 0) {
      w = 8;
      *((long long *) buff) = res;
    } else {
      w = sprintf (buff, "%d", res);
    }
    return return_one_key (c, key, buff, w);
  }

  write_out (&c->Out, "VALUE ", 6);
  write_out (&c->Out, key, key_len);

  char *ptr = get_write_ptr (&c->Out, 512);
  if (!ptr) return -1;
  char *s = ptr + 480;

  memcpy (ptr, " 0 .........\r\n", 14);
  char *size_ptr = ptr + 3;

  ptr += 14;
  if (res != 0x7fffffff) {
    if (mode >= 0) {
      w = sprintf (ptr, "%d", res);
    } else {
      w = 8;
      *((long long *) ptr) = res;
    }
    ptr += w;
  } else {
    w = 0;
  }

  for (i = 0; i < R_cnt; i++) {
    int t;
    if (ptr >= s) {
      advance_write_ptr (&c->Out, ptr - (s - 480));
      ptr = get_write_ptr (&c->Out, 512);
      if (!ptr) return -1;
      s = ptr + 480;
    }
    if (mode >= 0) {
      if (i || res != 0x7fffffff) {
        *ptr++ = ','; w++;
      }
      w += t = sprintf (ptr, "%lld", R[i]);
    } else {
      w += t = 8;
      *((long long *) ptr) = R[i];
    }
    ptr += t;
  }
  size_ptr[sprintf (size_ptr, "% 9d", w)] = '\r';
  memcpy (ptr, "\r\n", 2);
  ptr += 2;
  advance_write_ptr (&c->Out, ptr - (s - 480));

  return 0;
}
