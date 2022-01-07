
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inotify_watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct watcher_list {int wd; } ;


 int CAST (int *) ;
 struct watcher_list* RB_FIND (int ,int ,struct watcher_list*) ;
 int watcher_root ;

__attribute__((used)) static struct watcher_list* find_watcher(uv_loop_t* loop, int wd) {
  struct watcher_list w;
  w.wd = wd;
  return RB_FIND(watcher_root, CAST(&loop->inotify_watchers), &w);
}
