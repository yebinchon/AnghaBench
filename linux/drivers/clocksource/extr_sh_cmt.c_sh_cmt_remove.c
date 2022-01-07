
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int sh_cmt_remove(struct platform_device *pdev)
{
 return -EBUSY;
}
