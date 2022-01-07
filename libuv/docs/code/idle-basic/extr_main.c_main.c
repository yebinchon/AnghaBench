
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 int UV_RUN_DEFAULT ;
 int printf (char*) ;
 int uv_default_loop () ;
 int uv_idle_init (int ,int *) ;
 int uv_idle_start (int *,int ) ;
 int uv_loop_close (int ) ;
 int uv_run (int ,int ) ;
 int wait_for_a_while ;

int main() {
    uv_idle_t idler;

    uv_idle_init(uv_default_loop(), &idler);
    uv_idle_start(&idler, wait_for_a_while);

    printf("Idling...\n");
    uv_run(uv_default_loop(), UV_RUN_DEFAULT);

    uv_loop_close(uv_default_loop());
    return 0;
}
