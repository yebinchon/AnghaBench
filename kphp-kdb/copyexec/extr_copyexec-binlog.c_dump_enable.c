
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_result_enable {scalar_t__ type; int random_tag; } ;


 scalar_t__ LEV_COPYEXEC_RESULT_ENABLE ;
 scalar_t__ dump_line_header (char*) ;
 int fprintf (int ,char*,int ) ;
 int out ;

__attribute__((used)) static void dump_enable (struct lev_copyexec_result_enable *E) {
  if (dump_line_header (E->type == LEV_COPYEXEC_RESULT_ENABLE ? "LEV_COPYEXEC_RESULT_ENABLE": "LEV_COPYEXEC_RESULT_DISABLE") ) {
    return;
  }
  fprintf (out, "0x%llx\n", E->random_tag);
}
