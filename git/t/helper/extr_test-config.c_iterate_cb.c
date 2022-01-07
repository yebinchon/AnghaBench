
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* current_config_name () ;
 char* current_config_origin_type () ;
 int current_config_scope () ;
 int printf (char*,char const*) ;
 int putchar (char) ;
 char* scope_name (int ) ;

__attribute__((used)) static int iterate_cb(const char *var, const char *value, void *data)
{
 static int nr;

 if (nr++)
  putchar('\n');

 printf("key=%s\n", var);
 printf("value=%s\n", value ? value : "(null)");
 printf("origin=%s\n", current_config_origin_type());
 printf("name=%s\n", current_config_name());
 printf("scope=%s\n", scope_name(current_config_scope()));

 return 0;
}
