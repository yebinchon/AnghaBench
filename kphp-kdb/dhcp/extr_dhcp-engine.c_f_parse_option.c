
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_FILEDUMP ;
 int DEBUG_UDPDUMP ;
 int assert (int) ;
 int debug_mode ;
 int fprintf (int ,char*,char,int) ;
 int stderr ;

int f_parse_option (int val) {
  switch (val) {
  case 'F':
    assert (!debug_mode);
    debug_mode = DEBUG_FILEDUMP;
    break;
  case 'U':
    assert (!debug_mode);
    debug_mode = DEBUG_UDPDUMP;
    break;
  default:
    fprintf (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}
