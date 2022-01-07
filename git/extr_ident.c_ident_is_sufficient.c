
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_ALL_GIVEN ;
 int IDENT_MAIL_GIVEN ;

__attribute__((used)) static int ident_is_sufficient(int user_ident_explicitly_given)
{

 return (user_ident_explicitly_given & IDENT_MAIL_GIVEN);



}
