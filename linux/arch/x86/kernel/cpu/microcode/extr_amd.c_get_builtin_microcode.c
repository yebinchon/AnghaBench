
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio_data {int dummy; } ;
typedef int fw_name ;


 int get_builtin_firmware (struct cpio_data*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static bool get_builtin_microcode(struct cpio_data *cp, unsigned int family)
{
 return 0;

}
