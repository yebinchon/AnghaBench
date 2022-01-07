
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int CF_OUTPUT ;
 int LOG (char*,int *,int *) ;
 int * con_get_fullscreen_con (int *,int ) ;
 int * con_get_output (int *) ;

bool workspace_is_visible(Con *ws) {
    Con *output = con_get_output(ws);
    if (output == ((void*)0))
        return 0;
    Con *fs = con_get_fullscreen_con(output, CF_OUTPUT);
    LOG("workspace visible? fs = %p, ws = %p\n", fs, ws);
    return (fs == ws);
}
