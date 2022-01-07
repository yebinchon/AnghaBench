
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int BUG (char*) ;



 int get_protocol_config (char const*) ;
 int git_env_bool (char*,int) ;
 struct string_list* protocol_whitelist () ;
 int string_list_has_string (struct string_list const*,char const*) ;

int is_transport_allowed(const char *type, int from_user)
{
 const struct string_list *whitelist = protocol_whitelist();
 if (whitelist)
  return string_list_has_string(whitelist, type);

 switch (get_protocol_config(type)) {
 case 130:
  return 1;
 case 129:
  return 0;
 case 128:
  if (from_user < 0)
   from_user = git_env_bool("GIT_PROTOCOL_FROM_USER", 1);
  return from_user;
 }

 BUG("invalid protocol_allow_config type");
}
