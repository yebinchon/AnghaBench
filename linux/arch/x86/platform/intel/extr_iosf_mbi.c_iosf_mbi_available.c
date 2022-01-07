
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbi_pdev ;

bool iosf_mbi_available(void)
{

 return mbi_pdev;
}
