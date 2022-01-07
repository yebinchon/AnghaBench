
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* util; } ;
struct string_list {int dummy; } ;


 int free (char*) ;
 char* getenv (char*) ;
 struct string_list* query_params ;
 struct string_list_item* string_list_insert (struct string_list*,char*) ;
 struct string_list_item* string_list_lookup (struct string_list*,char*) ;
 char* url_decode_parameter_name (char const**) ;
 char* url_decode_parameter_value (char const**) ;
 struct string_list* xcalloc (int,int) ;

__attribute__((used)) static struct string_list *get_parameters(void)
{
 if (!query_params) {
  const char *query = getenv("QUERY_STRING");

  query_params = xcalloc(1, sizeof(*query_params));
  while (query && *query) {
   char *name = url_decode_parameter_name(&query);
   char *value = url_decode_parameter_value(&query);
   struct string_list_item *i;

   i = string_list_lookup(query_params, name);
   if (!i)
    i = string_list_insert(query_params, name);
   else
    free(i->util);
   i->util = value;
  }
 }
 return query_params;
}
