
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int action; } ;


 char const* N_ (char*) ;



 int _ (char*) ;
 int die (int ,int) ;

__attribute__((used)) static const char *action_name(const struct replay_opts *opts)
{
 switch (opts->action) {
 case 128:
  return N_("revert");
 case 129:
  return N_("cherry-pick");
 case 130:
  return N_("rebase -i");
 }
 die(_("unknown action: %d"), opts->action);
}
