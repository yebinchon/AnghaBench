
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* buff ;
 int mode ;
 size_t parse_pos ;
 int sscanf (char*,char*,int*,int*) ;

unsigned parse_int (void) {
  if (buff[parse_pos] == ',') {
    parse_pos ++;
  }
  int a, x;
  if (!mode) {
    assert (sscanf (buff + parse_pos, "\"%u\"%n", &a, &x) == 1);
  } else {
    assert (sscanf (buff + parse_pos, "%u%n", &a, &x) == 1);
  }
  parse_pos += x;
  assert (!buff[parse_pos] || buff[parse_pos] == ',' || buff[parse_pos] == 10 || buff[parse_pos] == 13);
  return a;
}
