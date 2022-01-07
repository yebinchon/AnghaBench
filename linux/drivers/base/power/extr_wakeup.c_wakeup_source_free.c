
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int name; int id; } ;


 int ida_free (int *,int ) ;
 int kfree (struct wakeup_source*) ;
 int kfree_const (int ) ;
 int wakeup_ida ;

__attribute__((used)) static void wakeup_source_free(struct wakeup_source *ws)
{
 ida_free(&wakeup_ida, ws->id);
 kfree_const(ws->name);
 kfree(ws);
}
