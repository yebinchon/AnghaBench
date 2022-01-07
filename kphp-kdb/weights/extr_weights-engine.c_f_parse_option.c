
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char,int) ;
 int index_mode ;
 int stderr ;
 int udp_enabled ;

int f_parse_option (int val) {
  switch (val) {
  case 'U':
    udp_enabled++;
    break;
  case 'i':
    index_mode = 1;
    break;
  default:
    fprintf (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}
