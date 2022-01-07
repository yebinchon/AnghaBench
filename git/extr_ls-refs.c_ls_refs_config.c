
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_hide_refs_config (char const*,char const*,char*) ;

__attribute__((used)) static int ls_refs_config(const char *var, const char *value, void *data)
{





 return parse_hide_refs_config(var, value, "uploadpack");
}
