
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imr_device {int dummy; } ;


 int debugfs_create_file (char*,int,int *,struct imr_device*,int *) ;
 int imr_dbgfs_state_fops ;

__attribute__((used)) static void imr_debugfs_register(struct imr_device *idev)
{
 debugfs_create_file("imr_state", 0444, ((void*)0), idev,
       &imr_dbgfs_state_fops);
}
