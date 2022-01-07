
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int add_split_index (struct index_state*) ;
 int git_config_get_split_index () ;
 int remove_split_index (struct index_state*) ;

__attribute__((used)) static void tweak_split_index(struct index_state *istate)
{
 switch (git_config_get_split_index()) {
 case -1:
  break;
 case 0:
  remove_split_index(istate);
  break;
 case 1:
  add_split_index(istate);
  break;
 default:
  break;
 }
}
