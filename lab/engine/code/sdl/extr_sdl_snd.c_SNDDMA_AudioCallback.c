
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ Uint8 ;
struct TYPE_2__ {int samplebits; scalar_t__ isfloat; scalar_t__ buffer; } ;
typedef scalar_t__ Sint16 ;


 TYPE_1__ dma ;
 int dmapos ;
 int dmasize ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int memset (scalar_t__*,char,int) ;
 float sdlMasterGain ;
 int snd_inited ;

__attribute__((used)) static void SNDDMA_AudioCallback(void *userdata, Uint8 *stream, int len)
{
 int pos = (dmapos * (dma.samplebits/8));
 if (pos >= dmasize)
  dmapos = pos = 0;

 if (!snd_inited)
 {
  memset(stream, '\0', len);
  return;
 }
 else
 {
  int tobufend = dmasize - pos;
  int len1 = len;
  int len2 = 0;

  if (len1 > tobufend)
  {
   len1 = tobufend;
   len2 = len - len1;
  }
  memcpy(stream, dma.buffer + pos, len1);
  if (len2 <= 0)
   dmapos += (len1 / (dma.samplebits/8));
  else
  {
   memcpy(stream+len1, dma.buffer, len2);
   dmapos = (len2 / (dma.samplebits/8));
  }
 }

 if (dmapos >= dmasize)
  dmapos = 0;
}
