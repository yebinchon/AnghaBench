
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dac_audio_pdata {int channel; } ;


 int HD64461_GPADR ;
 int HD64461_GPADR_SPEAKER ;
 int PKDR ;
 int PKDR_SPEAKER ;
 int inb (int ) ;
 int inw (int ) ;
 int outb (int ,int ) ;
 int outw (int ,int ) ;
 int sh_dac_enable (int ) ;

__attribute__((used)) static void dac_audio_start(struct dac_audio_pdata *pdata)
{
 u16 v;
 u8 v8;


 v = inw(HD64461_GPADR);
 v &= ~HD64461_GPADR_SPEAKER;
 outw(v, HD64461_GPADR);


 v8 = inb(PKDR);
 v8 &= ~PKDR_SPEAKER;
 outb(v8, PKDR);

 sh_dac_enable(pdata->channel);
}
