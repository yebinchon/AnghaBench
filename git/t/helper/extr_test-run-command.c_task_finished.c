
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static int task_finished(int result,
    struct strbuf *err,
    void *pp_cb,
    void *pp_task_cb)
{
 strbuf_addstr(err, "asking for a quick stop\n");
 return 1;
}
