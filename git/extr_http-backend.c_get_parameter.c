
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char const* util; } ;


 int get_parameters () ;
 struct string_list_item* string_list_lookup (int ,char const*) ;

__attribute__((used)) static const char *get_parameter(const char *name)
{
 struct string_list_item *i;
 i = string_list_lookup(get_parameters(), name);
 return i ? i->util : ((void*)0);
}
