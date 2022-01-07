
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netbuffer_t ;


 int advance_read_ptr (int *,int) ;
 int advance_skip_read_ptr (int *,int) ;
 int assert (int) ;
 int force_ready_bytes (int *,int) ;
 char* get_read_ptr (int *) ;
 int get_ready_bytes (int *) ;

__attribute__((used)) static int parse_list (int *Res, int max_size, netbuffer_t *In, int bytes) {
  char *ptr = 0, *ptr_e = 0;
  int r = 0, s = 0, x;
  if (!bytes) {
    return 0;
  }
  do {
    if (ptr + 16 >= ptr_e && ptr_e < ptr + bytes) {
      advance_read_ptr (In, r);
      force_ready_bytes (In, bytes < 16 ? bytes : 16);
      ptr = get_read_ptr (In);
      r = get_ready_bytes (In);
      if (r > bytes) {
        r = bytes;
      }
      ptr_e = ptr + r;
      r = 0;
    }
    assert (ptr < ptr_e);
    x = 0;
    while (ptr < ptr_e && *ptr >= '0' && *ptr <= '9') {
      if (x >= 0x7fffffff / 10) {
        return -1;
      }
      x = x*10 + (*ptr++ - '0');
      r++;
      bytes--;
    }
    if (s >= max_size || (bytes > 0 && (ptr == ptr_e || *ptr != ','))) {
      advance_skip_read_ptr (In, r + bytes);
      return -1;
    }
    Res[s++] = x;
    if (!bytes) {
      advance_read_ptr (In, r);
      return s;
    }
    assert (*ptr == ',');
    ptr++;
    r++;
  } while (--bytes > 0);
  assert (!bytes);
  advance_read_ptr (In, r);
  return s;
}
