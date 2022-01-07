
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; } ;
struct TYPE_9__ {int num; int fullscreen_mode; void* layout; void* name; int type; TYPE_1__ rect; } ;
typedef TYPE_2__ Con ;


 int CF_OUTPUT ;
 int CT_CON ;
 int CT_OUTPUT ;
 int CT_WORKSPACE ;
 int DLOG (char*) ;
 int FREE (void*) ;
 void* L_OUTPUT ;
 void* L_SPLITH ;
 int con_attach (TYPE_2__*,TYPE_2__*,int) ;
 int con_fix_percent (int *) ;
 TYPE_2__* con_new (int *,int *) ;
 int * croot ;
 void* sstrdup (char*) ;
 int x_set_name (TYPE_2__*,char*) ;

__attribute__((used)) static Con *_create___i3(void) {
    Con *__i3 = con_new(croot, ((void*)0));
    FREE(__i3->name);
    __i3->name = sstrdup("__i3");
    __i3->type = CT_OUTPUT;
    __i3->layout = L_OUTPUT;
    con_fix_percent(croot);
    x_set_name(__i3, "[i3 con] pseudo-output __i3");





    __i3->rect.width = 1280;
    __i3->rect.height = 1024;


    DLOG("adding main content container\n");
    Con *content = con_new(((void*)0), ((void*)0));
    content->type = CT_CON;
    FREE(content->name);
    content->name = sstrdup("content");
    content->layout = L_SPLITH;

    x_set_name(content, "[i3 con] content __i3");
    con_attach(content, __i3, 0);


    Con *ws = con_new(((void*)0), ((void*)0));
    ws->type = CT_WORKSPACE;
    ws->num = -1;
    ws->name = sstrdup("__i3_scratch");
    ws->layout = L_SPLITH;
    con_attach(ws, content, 0);
    x_set_name(ws, "[i3 con] workspace __i3_scratch");
    ws->fullscreen_mode = CF_OUTPUT;

    return __i3;
}
