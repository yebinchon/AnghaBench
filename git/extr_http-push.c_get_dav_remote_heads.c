
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROCESS_DIRS ;
 int PROCESS_FILES ;
 int RECURSIVE ;
 int process_ls_ref ;
 int remote_ls (char*,int,int ,int *) ;

__attribute__((used)) static void get_dav_remote_heads(void)
{
 remote_ls("refs/", (PROCESS_FILES | PROCESS_DIRS | RECURSIVE), process_ls_ref, ((void*)0));
}
