
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int samplebits; int channels; int samples; scalar_t__ isfloat; scalar_t__ buffer; } ;
struct TYPE_5__ {int left; int right; } ;
struct TYPE_4__ {scalar_t__ integer; } ;


 int S_TransferStereo16 (unsigned long*,int) ;
 TYPE_3__ dma ;
 TYPE_2__* paintbuffer ;
 int s_paintedtime ;
 TYPE_1__* s_testsound ;
 int sin (int) ;

void S_TransferPaintBuffer(int endtime)
{
 int out_idx;
 int count;
 int out_mask;
 int *p;
 int step;
 int val;
 unsigned long *pbuf;

 pbuf = (unsigned long *)dma.buffer;


 if ( s_testsound->integer ) {
  int i;


  count = (endtime - s_paintedtime);
  for (i=0 ; i<count ; i++)
   paintbuffer[i].left = paintbuffer[i].right = sin((s_paintedtime+i)*0.1)*20000*256;
 }


 if (dma.samplebits == 16 && dma.channels == 2)
 {
  S_TransferStereo16 (pbuf, endtime);
 }
 else
 {
  p = (int *) paintbuffer;
  count = (endtime - s_paintedtime) * dma.channels;
  out_mask = dma.samples - 1;
  out_idx = s_paintedtime * dma.channels & out_mask;
  step = 3 - dma.channels;

  if ((dma.isfloat) && (dma.samplebits == 32))
  {
   float *out = (float *) pbuf;
   while (count--)
   {
    val = *p >> 8;
    p+= step;
    if (val > 0x7fff)
     val = 0x7fff;
    else if (val < -32767)
     val = -32767;
    out[out_idx] = ((float) val) / 32767.0f;
    out_idx = (out_idx + 1) & out_mask;
   }
  }
  else if (dma.samplebits == 16)
  {
   short *out = (short *) pbuf;
   while (count--)
   {
    val = *p >> 8;
    p+= step;
    if (val > 0x7fff)
     val = 0x7fff;
    else if (val < -32768)
     val = -32768;
    out[out_idx] = val;
    out_idx = (out_idx + 1) & out_mask;
   }
  }
  else if (dma.samplebits == 8)
  {
   unsigned char *out = (unsigned char *) pbuf;
   while (count--)
   {
    val = *p >> 8;
    p+= step;
    if (val > 0x7fff)
     val = 0x7fff;
    else if (val < -32768)
     val = -32768;
    out[out_idx] = (val>>8) + 128;
    out_idx = (out_idx + 1) & out_mask;
   }
  }
 }
}
