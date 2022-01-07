
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int committer_ident_explicitly_given ;
 int ident_is_sufficient (int ) ;

int committer_ident_sufficiently_given(void)
{
 return ident_is_sufficient(committer_ident_explicitly_given);
}
