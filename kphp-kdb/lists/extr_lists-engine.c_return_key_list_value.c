
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int PTR_INTS ;
 int advance_write_ptr (int *,int) ;
 int fprintf (int ,char*,int) ;
 char* get_write_ptr (int *,int) ;
 int memcpy (char*,char*,int) ;
 int object_id_ints ;
 int return_one_key (struct connection*,char const*,char*,int) ;
 size_t sprintf (char*,char*,int const) ;
 char* stats_buff ;
 int stderr ;
 scalar_t__ verbosity ;
 int write_out (int *,char const*,int) ;

int return_key_list_value (struct connection *c, const char *key, int key_len, int res, int mode, const int *R, int R_cnt, int rec_size, int text_offset, int long_offset) {
  int w, i, j = 0;

  if (verbosity > 0) {
    fprintf (stderr, "result = %d\n", res);
  }

  if (!R_cnt) {
    if (mode < 0) {
      w = 4;
      *((int *) stats_buff) = res;
    } else {
      w = sprintf (stats_buff, "%d", res);
    }
    return return_one_key (c, key, stats_buff, w);
  }

  write_out (&c->Out, "VALUE ", 6);
  write_out (&c->Out, key, key_len);

  char *ptr = get_write_ptr (&c->Out, 1024);
  if (!ptr) return -1;
  char *s = ptr + 512;

  memcpy (ptr, " 0 .........\r\n", 14);
  char *size_ptr = ptr + 3;

  ptr += 14;
  if (mode >= 0) {
    w = sprintf (ptr, "%d", res);
  } else {
    w = 4;
    *((int *) ptr) = res;
  }
  ptr += w;
  for (i = 0; i < R_cnt; i++) {
    int t;
    if (ptr >= s) {
      advance_write_ptr (&c->Out, ptr - (s - 512));
      ptr = get_write_ptr (&c->Out, 1024);
      if (!ptr) return -1;
      s = ptr + 512;
    }
    if (mode >= 0) {
      *ptr++ = (j > 0 && j < object_id_ints ? ':' : ',');
      w++;
      if (j == text_offset) {
        char *p = *((char **) (R + i));
        t = R[i + PTR_INTS];
        int k;
        for (k = 0; k < t; k++) {
          if (p[k] == ',') { ptr[k] = 12; }
          else if (p[k] == 12) { ptr[k] = ' '; }
          else { ptr[k] = p[k]; }
        }
        w += t;
        j += PTR_INTS;
        i += PTR_INTS;
      } else if (j == long_offset) {
        w += t = sprintf (ptr, "%lld", *(long long *) (R + i));
        i++;
        j++;
      } else {
        w += t = sprintf (ptr, "%d", R[i]);
      }
    } else {
      w += t = 4;
      *((int *) ptr) = R[i];
    }
    if (++j == rec_size) {
      j = 0;
    }
    ptr += t;
  }
  size_ptr[sprintf (size_ptr, "% 9d", w)] = '\r';
  memcpy (ptr, "\r\n", 2);
  ptr += 2;
  advance_write_ptr (&c->Out, ptr - (s - 512));

  return 0;
}
