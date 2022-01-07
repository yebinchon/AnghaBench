
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int type; int a; int b; } ;


 scalar_t__ dump_line_header (char*,char) ;
 int fprintf (int ,char*,int,int,int) ;
 int out ;

__attribute__((used)) static void dump_incr_message_flags (struct lev_generic *E) {
  if (dump_line_header ("LEV_TX_INCR_MESSAGE_FLAGS", '+') < 0) {
    return;
  }
  fprintf (out, "%d\t%d\t%d\n", E->type & 0xff, E->a, E->b);
}
