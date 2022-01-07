
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* base; } ;


 int H2O_ROOT ;
 char* H2O_TO_STR (int ) ;
 int SIZE_MAX ;
 char* getenv (char*) ;
 char* h2o_mem_alloc (scalar_t__) ;
 TYPE_1__ h2o_strdup (int *,char const*,int ) ;
 int sprintf (char*,char*,char*,char const*) ;
 int * strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;

char *h2o_configurator_get_cmd_path(const char *cmd)
{
    char *root, *cmd_fullpath;


    if (cmd[0] == '/' || strchr(cmd, '/') == ((void*)0))
        goto ReturnOrig;


    if ((root = getenv("H2O_ROOT")) == ((void*)0)) {
        root = H2O_TO_STR(H2O_ROOT);
    }


    cmd_fullpath = h2o_mem_alloc(strlen(root) + strlen(cmd) + 2);
    sprintf(cmd_fullpath, "%s/%s", root, cmd);
    return cmd_fullpath;

ReturnOrig:
    return h2o_strdup(((void*)0), cmd, SIZE_MAX).base;
}
