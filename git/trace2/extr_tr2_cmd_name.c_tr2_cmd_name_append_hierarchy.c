
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;


 int TR2_ENVVAR_PARENT_NAME ;
 char* getenv (int ) ;
 int setenv (int ,int ,int) ;
 int strbuf_addch (TYPE_1__*,char) ;
 int strbuf_addstr (TYPE_1__*,char const*) ;
 int strbuf_reset (TYPE_1__*) ;
 TYPE_1__ tr2cmdname_hierarchy ;

void tr2_cmd_name_append_hierarchy(const char *name)
{
 const char *parent_name = getenv(TR2_ENVVAR_PARENT_NAME);

 strbuf_reset(&tr2cmdname_hierarchy);
 if (parent_name && *parent_name) {
  strbuf_addstr(&tr2cmdname_hierarchy, parent_name);
  strbuf_addch(&tr2cmdname_hierarchy, '/');
 }
 strbuf_addstr(&tr2cmdname_hierarchy, name);

 setenv(TR2_ENVVAR_PARENT_NAME, tr2cmdname_hierarchy.buf, 1);
}
