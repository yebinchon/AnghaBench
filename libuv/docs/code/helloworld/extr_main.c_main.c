
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int UV_RUN_DEFAULT ;
 int free (int *) ;
 int * malloc (int) ;
 int printf (char*) ;
 int uv_loop_close (int *) ;
 int uv_loop_init (int *) ;
 int uv_run (int *,int ) ;

int main() {
    uv_loop_t *loop = malloc(sizeof(uv_loop_t));
    uv_loop_init(loop);

    printf("Now quitting.\n");
    uv_run(loop, UV_RUN_DEFAULT);

    uv_loop_close(loop);
    free(loop);
    return 0;
}
