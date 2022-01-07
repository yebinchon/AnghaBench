
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regexec (int *,char const*,int ,int *,int ) ;
 int sym_regex_c ;

__attribute__((used)) static int regex_skip_reloc(const char *sym_name)
{
 return !regexec(&sym_regex_c, sym_name, 0, ((void*)0), 0);
}
