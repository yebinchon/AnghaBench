
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* buf; int len; } ;


 int IDENT_NAME_GIVEN ;
 int copy_gecos (int ,TYPE_1__*) ;
 int default_name_is_bogus ;
 TYPE_1__ git_default_name ;
 int ident_config_given ;
 int strbuf_trim (TYPE_1__*) ;
 int xgetpwuid_self (int *) ;

const char *ident_default_name(void)
{
 if (!(ident_config_given & IDENT_NAME_GIVEN) && !git_default_name.len) {
  copy_gecos(xgetpwuid_self(&default_name_is_bogus), &git_default_name);
  strbuf_trim(&git_default_name);
 }
 return git_default_name.buf;
}
