
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ CMV_RxMsg; } ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_1__* DSL_DEV_PRIVATE (int *) ;
 int IFX_MEI_LongWordReadOffset (int *,int,int*) ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int) ;
 int MEI_HALF_WORD_SWAP (int) ;
 scalar_t__ ME_DX_AD ;
 scalar_t__ ME_DX_DATA ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_DMARead (DSL_DEV_Device_t * pDev, u32 srcaddr, u32 * databuff,
         u32 databuffsize)
{
 u32 *p = databuff;
 u32 temp;

 if (srcaddr & 3)
  return DSL_DEV_MEI_ERR_FAILURE;


 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_DX_AD, srcaddr);


 while (databuffsize--) {
  IFX_MEI_LongWordReadOffset (pDev, (u32) ME_DX_DATA, &temp);
  if (databuff == (u32 *) DSL_DEV_PRIVATE(pDev)->CMV_RxMsg)
   MEI_HALF_WORD_SWAP (temp);
  *p = temp;
  p++;
 }

 return DSL_DEV_MEI_ERR_SUCCESS;

}
