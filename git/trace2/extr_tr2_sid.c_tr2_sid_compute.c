
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; scalar_t__ len; } ;


 int TR2_ENVVAR_PARENT_SID ;
 char* getenv (int ) ;
 int setenv (int ,int ,int) ;
 int strbuf_addch (TYPE_1__*,char) ;
 int strbuf_addstr (TYPE_1__*,char const*) ;
 int tr2_sid_append_my_sid_component () ;
 TYPE_1__ tr2sid_buf ;
 int tr2sid_nr_git_parents ;

__attribute__((used)) static void tr2_sid_compute(void)
{
 const char *parent_sid;

 if (tr2sid_buf.len)
  return;

 parent_sid = getenv(TR2_ENVVAR_PARENT_SID);
 if (parent_sid && *parent_sid) {
  const char *p;
  for (p = parent_sid; *p; p++)
   if (*p == '/')
    tr2sid_nr_git_parents++;

  strbuf_addstr(&tr2sid_buf, parent_sid);
  strbuf_addch(&tr2sid_buf, '/');
  tr2sid_nr_git_parents++;
 }

 tr2_sid_append_my_sid_component();

 setenv(TR2_ENVVAR_PARENT_SID, tr2sid_buf.buf, 1);
}
