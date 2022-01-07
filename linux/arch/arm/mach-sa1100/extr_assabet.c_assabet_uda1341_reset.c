
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RST_UDA1341 ;
 int assabet_codec_reset (int ,int) ;

void assabet_uda1341_reset(int set)
{
 assabet_codec_reset(RST_UDA1341, set);
}
