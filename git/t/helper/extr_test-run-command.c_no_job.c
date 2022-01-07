
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {int dummy; } ;


 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static int no_job(struct child_process *cp,
    struct strbuf *err,
    void *cb,
    void **task_cb)
{
 strbuf_addstr(err, "no further jobs available\n");
 return 0;
}
