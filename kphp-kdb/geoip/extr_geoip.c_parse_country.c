
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* buff ;
 size_t parse_pos ;

unsigned parse_country (void) {
  if (buff[parse_pos] == ',') {
    parse_pos ++;
  }
  unsigned r = 0;
  assert (buff[parse_pos ++] == '"');
  if (buff[parse_pos] != '"') {
    r = buff[parse_pos ++];
    r = r * 256 + buff[parse_pos ++];
  }
  assert (buff[parse_pos ++] == '"');
  assert (!buff[parse_pos] || buff[parse_pos] == ',' || buff[parse_pos] == 10 || buff[parse_pos] == 13);
  return r;
}
