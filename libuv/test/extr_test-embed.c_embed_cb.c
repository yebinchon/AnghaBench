
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_async_t ;


 int UV_RUN_ONCE ;
 int embed_sem ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;
 int uv_sem_post (int *) ;

__attribute__((used)) static void embed_cb(uv_async_t* async) {
  uv_run(uv_default_loop(), UV_RUN_ONCE);

  uv_sem_post(&embed_sem);
}
