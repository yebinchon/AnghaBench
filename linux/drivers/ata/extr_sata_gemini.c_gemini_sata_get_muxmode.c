
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {int muxmode; } ;
typedef enum gemini_muxmode { ____Placeholder_gemini_muxmode } gemini_muxmode ;



enum gemini_muxmode gemini_sata_get_muxmode(struct sata_gemini *sg)
{
 return sg->muxmode;
}
