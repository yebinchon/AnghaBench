
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ lev_antispam_del_pattern_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ antispam_del (int ) ;
 int st_printf (char*,int ) ;
 int verbosity ;

__attribute__((used)) static bool del_pattern (lev_antispam_del_pattern_t* E) {
  if (antispam_del (E->id)) {
    if (verbosity >= 3) {
      st_printf ("$1del pattern[%10d]$^\n", E->id);
    }
    return TRUE;
  }
  if (verbosity >= 3) {
    st_printf ("$5del pattern[%10d] (rejected: possibly wrong id)$^\n", E->id);
  }
  return FALSE;
}
