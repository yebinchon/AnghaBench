
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_fdinit (int *,int) ;
 int die_errno (char*,int) ;
 scalar_t__ first_commit_done ;
 int report_buffer ;

void fast_export_init(int fd)
{
 first_commit_done = 0;
 if (buffer_fdinit(&report_buffer, fd))
  die_errno("cannot read from file descriptor %d", fd);
}
