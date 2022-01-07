
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_to_user (char*,char*,int) ;
 scalar_t__ memcpy (char*,char*,int) ;

__attribute__((used)) static int
IFX_MEI_IoctlCopyTo (int from_kernel, char *dest, char *from, int size)
{
 int ret = 0;

 if (!from_kernel)
  ret = copy_to_user ((char *) dest, (char *) from, size);
 else
  ret = (int)memcpy ((char *) dest, (char *) from, size);
 return ret;
}
