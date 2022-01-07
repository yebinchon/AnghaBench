
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_result_connect {int pid; int hostname; int hostname_length; int ip; int volume_id; int random_tag; } ;


 scalar_t__ dump_line_header (char*) ;
 int fprintf (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int out ;
 int show_ip (int ) ;

__attribute__((used)) static void dump_connect (struct lev_copyexec_result_connect *E) {
  if (dump_line_header ("LEV_COPYEXEC_RESULT_CONNECT")) {
    return;
  }
  fprintf (out, "0x%llx\t0x%llx\t%s\t%.*s\t%d\n", E->random_tag, E->volume_id, show_ip (E->ip), E->hostname_length, E->hostname, E->pid);
}
