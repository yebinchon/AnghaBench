
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_variables (char const*,int *) ;
 int note_variable ;
 int string_list_init (int *) ;
 int string_list_sort (int *) ;
 int variables_set ;

__attribute__((used)) static void
note_variables (const char *string)
{
  string_list_init (&variables_set);
  find_variables (string, &note_variable);
  string_list_sort (&variables_set);
}
