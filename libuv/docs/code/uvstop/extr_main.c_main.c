
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;
typedef int uv_idle_t ;


 int UV_RUN_DEFAULT ;
 int idle_cb ;
 int prep_cb ;
 int uv_default_loop () ;
 int uv_idle_init (int ,int *) ;
 int uv_idle_start (int *,int ) ;
 int uv_prepare_init (int ,int *) ;
 int uv_prepare_start (int *,int ) ;
 int uv_run (int ,int ) ;

int main() {
    uv_idle_t idler;
    uv_prepare_t prep;

    uv_idle_init(uv_default_loop(), &idler);
    uv_idle_start(&idler, idle_cb);

    uv_prepare_init(uv_default_loop(), &prep);
    uv_prepare_start(&prep, prep_cb);

    uv_run(uv_default_loop(), UV_RUN_DEFAULT);

    return 0;
}
