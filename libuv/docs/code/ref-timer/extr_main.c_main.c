
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int UV_RUN_DEFAULT ;
 int fake_job ;
 int fake_job_req ;
 int gc ;
 int gc_req ;
 int loop ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;
 int uv_timer_init (int ,int *) ;
 int uv_timer_start (int *,int ,int,int) ;
 int uv_unref (int *) ;

int main() {
    loop = uv_default_loop();

    uv_timer_init(loop, &gc_req);
    uv_unref((uv_handle_t*) &gc_req);

    uv_timer_start(&gc_req, gc, 0, 2000);


    uv_timer_init(loop, &fake_job_req);
    uv_timer_start(&fake_job_req, fake_job, 9000, 0);
    return uv_run(loop, UV_RUN_DEFAULT);
}
