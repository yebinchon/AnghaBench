
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int GITMODULES_FILE ;
 int _ (char*) ;
 scalar_t__ add_file_to_index (struct index_state*,int ,int ) ;
 int die (int ) ;

void stage_updated_gitmodules(struct index_state *istate)
{
 if (add_file_to_index(istate, GITMODULES_FILE, 0))
  die(_("staging updated .gitmodules failed"));
}
