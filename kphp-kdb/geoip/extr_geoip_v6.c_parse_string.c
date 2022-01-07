
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* buff ;
 size_t parse_pos ;

int parse_string (void) {
  if (buff[parse_pos] == ',') {
    parse_pos ++;
  }
  while (buff[parse_pos] == ' ') {
    parse_pos ++;
  }
  assert (buff[parse_pos ++] == '"');
  int l = 0;
  while (buff[parse_pos ++] != '"') {
    assert (buff[parse_pos]);
    l++;
  }
  assert (!buff[parse_pos] || buff[parse_pos] == ',' || buff[parse_pos] == 10 || buff[parse_pos] == 13);
  return l + 1;
}
