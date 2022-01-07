
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int author_ident_explicitly_given ;
 int ident_is_sufficient (int ) ;

int author_ident_sufficiently_given(void)
{
 return ident_is_sufficient(author_ident_explicitly_given);
}
