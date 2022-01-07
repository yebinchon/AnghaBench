
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEI_DIRNAME ;
 int dev_major ;
 int unregister_chrdev (int ,int ) ;

__attribute__((used)) static int
IFX_MEI_CleanUpDevNode (int num)
{
 if (num == 0)
  unregister_chrdev (dev_major, MEI_DIRNAME);
 return 0;
}
