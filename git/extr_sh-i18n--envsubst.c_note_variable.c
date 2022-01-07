
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int string_list_append (int *,char*) ;
 int variables_set ;
 char* xmemdupz (char const*,size_t) ;

__attribute__((used)) static void
note_variable (const char *var_ptr, size_t var_len)
{
  char *string = xmemdupz (var_ptr, var_len);

  string_list_append (&variables_set, string);
}
