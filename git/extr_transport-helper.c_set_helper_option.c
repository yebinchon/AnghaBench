
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct helper_data* data; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct helper_data {int option; } ;


 int ARRAY_SIZE (char**) ;
 struct strbuf STRBUF_INIT ;
 char** boolean_options ;
 int get_helper (struct transport*) ;
 int quote_c_style (char const*,struct strbuf*,int *,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_set_helper_option (struct helper_data*,struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int string_list_set_helper_option (struct helper_data*,char const*,struct string_list*) ;
 char** unsupported_options ;

__attribute__((used)) static int set_helper_option(struct transport *transport,
     const char *name, const char *value)
{
 struct helper_data *data = transport->data;
 struct strbuf buf = STRBUF_INIT;
 int i, ret, is_bool = 0;

 get_helper(transport);

 if (!data->option)
  return 1;

 if (!strcmp(name, "deepen-not"))
  return string_list_set_helper_option(data, name,
           (struct string_list *)value);

 for (i = 0; i < ARRAY_SIZE(unsupported_options); i++) {
  if (!strcmp(name, unsupported_options[i]))
   return 1;
 }

 for (i = 0; i < ARRAY_SIZE(boolean_options); i++) {
  if (!strcmp(name, boolean_options[i])) {
   is_bool = 1;
   break;
  }
 }

 strbuf_addf(&buf, "option %s ", name);
 if (is_bool)
  strbuf_addstr(&buf, value ? "true" : "false");
 else
  quote_c_style(value, &buf, ((void*)0), 0);
 strbuf_addch(&buf, '\n');

 ret = strbuf_set_helper_option(data, &buf);
 strbuf_release(&buf);
 return ret;
}
