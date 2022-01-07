
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inotify_fd; int inotify_watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct watcher_list {int wd; int watchers; int iterating; } ;


 int CAST (int *) ;
 scalar_t__ QUEUE_EMPTY (int *) ;
 int RB_REMOVE (int ,int ,struct watcher_list*) ;
 int uv__free (struct watcher_list*) ;
 int uv__inotify_rm_watch (int ,int ) ;
 int watcher_root ;

__attribute__((used)) static void maybe_free_watcher_list(struct watcher_list* w, uv_loop_t* loop) {

  if ((!w->iterating) && QUEUE_EMPTY(&w->watchers)) {

    RB_REMOVE(watcher_root, CAST(&loop->inotify_watchers), w);
    uv__inotify_rm_watch(loop->inotify_fd, w->wd);
    uv__free(w);
  }
}
