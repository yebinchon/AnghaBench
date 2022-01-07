
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_events; } ;


 int UBC_CBR (int) ;
 int UBC_CBR_CE ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 TYPE_1__ sh4a_ubc ;

__attribute__((used)) static void sh4a_ubc_enable_all(unsigned long mask)
{
 int i;

 for (i = 0; i < sh4a_ubc.num_events; i++)
  if (mask & (1 << i))
   __raw_writel(__raw_readl(UBC_CBR(i)) | UBC_CBR_CE,
         UBC_CBR(i));
}
