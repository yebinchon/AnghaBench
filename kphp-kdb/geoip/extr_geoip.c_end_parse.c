
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buff ;
 size_t parse_pos ;

int end_parse (void) {
  return !buff[parse_pos] || (buff[parse_pos] == 10 ) || (buff[parse_pos] == 13);
}
