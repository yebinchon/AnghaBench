
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__loop_alive (int const*) ;

int uv_loop_alive(const uv_loop_t* loop) {
    return uv__loop_alive(loop);
}
