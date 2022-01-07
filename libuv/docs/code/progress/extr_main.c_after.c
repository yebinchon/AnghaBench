
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;
typedef int uv_handle_t ;


 int async ;
 int fprintf (int ,char*) ;
 int stderr ;
 int uv_close (int *,int *) ;

void after(uv_work_t *req, int status) {
    fprintf(stderr, "Download complete\n");
    uv_close((uv_handle_t*) &async, ((void*)0));
}
