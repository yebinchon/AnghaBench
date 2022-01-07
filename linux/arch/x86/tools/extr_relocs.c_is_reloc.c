
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum symtype { ____Placeholder_symtype } symtype ;


 int regexec (int *,char const*,int ,int *,int ) ;
 scalar_t__* sym_regex ;
 int * sym_regex_c ;

__attribute__((used)) static int is_reloc(enum symtype type, const char *sym_name)
{
 return sym_regex[type] &&
  !regexec(&sym_regex_c[type], sym_name, 0, ((void*)0), 0);
}
