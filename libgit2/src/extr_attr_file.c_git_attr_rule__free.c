
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_attr_rule ;


 int git__free (int *) ;
 int git_attr_rule__clear (int *) ;

void git_attr_rule__free(git_attr_rule *rule)
{
 git_attr_rule__clear(rule);
 git__free(rule);
}
