
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_Device_t ;


 int ARC_TO_MEI_DBG_DONE ;
 int IFX_MEI_EMSG (char*) ;
 int IFX_MEI_LongWordReadOffset (int *,int,int*) ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int) ;
 scalar_t__ ME_ARC2ME_STAT ;
 int WHILE_DELAY ;

__attribute__((used)) static void
meiPollForDbgDone (DSL_DEV_Device_t * pDev)
{
 u32 query = 0;
 int i = 0;

 while (i < WHILE_DELAY) {
  IFX_MEI_LongWordReadOffset (pDev, (u32) ME_ARC2ME_STAT, &query);
  query &= (ARC_TO_MEI_DBG_DONE);
  if (query)
   break;
  i++;
  if (i == WHILE_DELAY) {
   IFX_MEI_EMSG ("PollforDbg fail!\n");
  }
 }
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_ARC2ME_STAT, ARC_TO_MEI_DBG_DONE);
}
