
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {char const* name; int id; } ;


 int GFP_KERNEL ;
 int ida_alloc (int *,int ) ;
 int kfree (struct wakeup_source*) ;
 int kfree_const (char const*) ;
 char* kstrdup_const (char const*,int ) ;
 struct wakeup_source* kzalloc (int,int ) ;
 int wakeup_ida ;

struct wakeup_source *wakeup_source_create(const char *name)
{
 struct wakeup_source *ws;
 const char *ws_name;
 int id;

 ws = kzalloc(sizeof(*ws), GFP_KERNEL);
 if (!ws)
  goto err_ws;

 ws_name = kstrdup_const(name, GFP_KERNEL);
 if (!ws_name)
  goto err_name;
 ws->name = ws_name;

 id = ida_alloc(&wakeup_ida, GFP_KERNEL);
 if (id < 0)
  goto err_id;
 ws->id = id;

 return ws;

err_id:
 kfree_const(ws->name);
err_name:
 kfree(ws);
err_ws:
 return ((void*)0);
}
