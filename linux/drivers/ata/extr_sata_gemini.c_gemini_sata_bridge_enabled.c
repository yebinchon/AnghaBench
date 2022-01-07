
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {scalar_t__ muxmode; int sata_bridge; } ;


 scalar_t__ GEMINI_MUXMODE_2 ;
 scalar_t__ GEMINI_MUXMODE_3 ;

bool gemini_sata_bridge_enabled(struct sata_gemini *sg, bool is_ata1)
{
 if (!sg->sata_bridge)
  return 0;




 if ((sg->muxmode == GEMINI_MUXMODE_2) &&
     !is_ata1)
  return 0;
 if ((sg->muxmode == GEMINI_MUXMODE_3) &&
     is_ata1)
  return 0;

 return 1;
}
