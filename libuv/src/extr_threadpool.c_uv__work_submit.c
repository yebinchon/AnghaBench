
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
struct uv__work {void (* work ) (struct uv__work*) ;void (* done ) (struct uv__work*,int) ;int wq; int * loop; } ;
typedef enum uv__work_kind { ____Placeholder_uv__work_kind } uv__work_kind ;


 int init_once ;
 int once ;
 int post (int *,int) ;
 int uv_once (int *,int ) ;

void uv__work_submit(uv_loop_t* loop,
                     struct uv__work* w,
                     enum uv__work_kind kind,
                     void (*work)(struct uv__work* w),
                     void (*done)(struct uv__work* w, int status)) {
  uv_once(&once, init_once);
  w->loop = loop;
  w->work = work;
  w->done = done;
  post(&w->wq, kind);
}
