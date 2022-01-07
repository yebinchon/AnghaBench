
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio_data {int data; int size; } ;
struct builtin_fw {int data; int size; int name; } ;


 struct builtin_fw* __end_builtin_fw ;
 struct builtin_fw* __start_builtin_fw ;
 int strcmp (char const*,int ) ;

bool get_builtin_firmware(struct cpio_data *cd, const char *name)
{
 return 0;
}
