
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int degrade_cc_to_c_warning ;
 int fflush (int ) ;
 int rename_limit_advice ;
 int rename_limit_warning ;
 int stdout ;
 int warning (int ,...) ;

void diff_warn_rename_limit(const char *varname, int needed, int degraded_cc)
{
 fflush(stdout);
 if (degraded_cc)
  warning(_(degrade_cc_to_c_warning));
 else if (needed)
  warning(_(rename_limit_warning));
 else
  return;
 if (0 < needed)
  warning(_(rename_limit_advice), varname, needed);
}
