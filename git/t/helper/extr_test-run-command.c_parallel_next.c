
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {int argv; int args; } ;


 int argv_array_pushv (int *,int ) ;
 int number_callbacks ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static int parallel_next(struct child_process *cp,
    struct strbuf *err,
    void *cb,
    void **task_cb)
{
 struct child_process *d = cb;
 if (number_callbacks >= 4)
  return 0;

 argv_array_pushv(&cp->args, d->argv);
 strbuf_addstr(err, "preloaded output of a child\n");
 number_callbacks++;
 return 1;
}
