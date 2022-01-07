
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Cvar_VariableString (char*) ;
 char const* homefiles_file (char*) ;
 char* va (char*,char const*,int,char const*,char const*) ;

__attribute__((used)) static const char* homefiles_demo_path(const char* demo_name, int demo_number) {
  const char* demoext = "dm_";
  const char* protocol = Cvar_VariableString("com_protocol");

  char* file =
      va("demos/%s/%05d.%s%s", demo_name, demo_number, demoext, protocol);
  return homefiles_file(file);
}
