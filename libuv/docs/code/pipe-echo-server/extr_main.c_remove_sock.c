
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int PIPENAME ;
 int exit (int ) ;
 int loop ;
 int uv_fs_unlink (int ,int *,int ,int *) ;

void remove_sock(int sig) {
    uv_fs_t req;
    uv_fs_unlink(loop, &req, PIPENAME, ((void*)0));
    exit(0);
}
