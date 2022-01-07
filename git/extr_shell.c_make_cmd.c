
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_DIR ;
 char* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static char *make_cmd(const char *prog)
{
 return xstrfmt("%s/%s", COMMAND_DIR, prog);
}
