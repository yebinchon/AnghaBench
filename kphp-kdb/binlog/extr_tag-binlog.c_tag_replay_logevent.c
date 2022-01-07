
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int type; int b; } ;




 char act ;
 int assert (int) ;
 int binlog_tag ;
 int convert_md5_to_hex (char*,int ) ;
 int default_replay_logevent (struct lev_generic*,int) ;
 int exit (int ) ;
 int kprintf (char*,...) ;
 int log_cur_pos () ;
 int printf (char*,char*) ;
 int start ;

int tag_replay_logevent (struct lev_generic *E, int size) {
  int s;
  switch (E->type) {
    case 129:
      assert (!start && !log_cur_pos ());
      if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
      s = 24 + ((E->b + 3) & -4);
      if (size < s) { return -2; }
      start = 1;
      return s;
    case 128:
      s = default_replay_logevent (E, size);
      if (act == 'i') {
        char output[33];
        convert_md5_to_hex (output, binlog_tag);
        printf ("%s\n", output);
        exit (0);
      }
      kprintf ("ERROR: binlog has already a tag.\n");
      return -1;
  }
  kprintf ("unexpected log event type %08x at position %lld\n", E->type, log_cur_pos ());
  return -1;
}
