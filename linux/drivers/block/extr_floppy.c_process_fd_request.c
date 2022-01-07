
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cont ;
 int redo_fd_request ;
 int rw_cont ;
 int schedule_bh (int ) ;

__attribute__((used)) static void process_fd_request(void)
{
 cont = &rw_cont;
 schedule_bh(redo_fd_request);
}
