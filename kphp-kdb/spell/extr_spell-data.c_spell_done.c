
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; int spell_checker; } ;


 TYPE_1__** SS ;
 int delete_aspell_config (int ) ;
 int delete_aspell_speller (int ) ;
 int re_email ;
 int re_url ;
 int regfree (int *) ;
 int spellers ;

void spell_done (void) {
  int i;
  for (i = 0; i < spellers; i++) {
    delete_aspell_speller (SS[i]->spell_checker);
    delete_aspell_config (SS[i]->config);
  }
  regfree (&re_email);
  regfree (&re_url);
}
