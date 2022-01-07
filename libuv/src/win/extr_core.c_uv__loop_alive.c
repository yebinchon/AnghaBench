
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * endgame_handles; } ;
typedef TYPE_1__ uv_loop_t ;


 scalar_t__ uv__has_active_handles (TYPE_1__ const*) ;
 scalar_t__ uv__has_active_reqs (TYPE_1__ const*) ;

__attribute__((used)) static int uv__loop_alive(const uv_loop_t* loop) {
  return uv__has_active_handles(loop) ||
         uv__has_active_reqs(loop) ||
         loop->endgame_handles != ((void*)0);
}
