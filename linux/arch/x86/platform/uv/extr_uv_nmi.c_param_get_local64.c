
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;
typedef int local64_t ;


 int local64_read (int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int param_get_local64(char *buffer, const struct kernel_param *kp)
{
 return sprintf(buffer, "%lu\n", local64_read((local64_t *)kp->arg));
}
