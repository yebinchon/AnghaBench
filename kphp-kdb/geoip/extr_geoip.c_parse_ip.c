
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* buff ;
 int mode ;
 size_t parse_pos ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ;

unsigned parse_ip (void) {
  if (buff[parse_pos] == ',') {
    parse_pos ++;
  }
  unsigned a,b,c,d;
  int x;
  if (!mode) {
    assert (sscanf (buff + parse_pos, "\"%u.%u.%u.%u\"%n", &a, &b, &c, &d, &x) == 4);
  } else if (mode == 2) {
    assert (sscanf (buff + parse_pos, "%u.%u.%u.%u%n", &a, &b, &c, &d, &x) == 4);
  } else {
    assert (0);
  }
  assert (0 <= a && a < 256);
  assert (0 <= b && b < 256);
  assert (0 <= c && c < 256);
  assert (0 <= d && d < 256);
  parse_pos += x;
  assert (!buff[parse_pos] || buff[parse_pos] == ',');
  return (a << 24) + (b << 16) + (c << 8) + d;
}
