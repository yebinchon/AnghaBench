
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_cmd_filter {int write_ok; int read_ok; } ;
typedef int fmode_t ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 int FMODE_WRITE ;
 struct blk_cmd_filter blk_default_cmd_filter ;
 scalar_t__ capable (int ) ;
 scalar_t__ test_bit (unsigned char,int ) ;

int blk_verify_command(unsigned char *cmd, fmode_t mode)
{
 struct blk_cmd_filter *filter = &blk_default_cmd_filter;


 if (capable(CAP_SYS_RAWIO))
  return 0;


 if (test_bit(cmd[0], filter->read_ok))
  return 0;


 if (test_bit(cmd[0], filter->write_ok) && (mode & FMODE_WRITE))
  return 0;

 return -EPERM;
}
