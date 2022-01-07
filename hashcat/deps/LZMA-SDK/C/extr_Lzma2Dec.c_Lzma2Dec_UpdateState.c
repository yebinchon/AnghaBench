
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_6__ {int pb; int lc; int lp; } ;
struct TYPE_7__ {TYPE_1__ prop; int dicPos; } ;
struct TYPE_8__ {int state; int control; int needInitLevel; int unpackSize; int packSize; TYPE_2__ decoder; int isExtraMode; } ;
typedef int ELzma2State ;
typedef TYPE_3__ CLzma2Dec ;
typedef int Byte ;


 int False ;
 int LZMA2_CONTROL_COPY_RESET_DIC ;
 int LZMA2_IS_UNCOMPRESSED_STATE (TYPE_3__*) ;
 unsigned int LZMA2_LCLP_MAX ;

 int LZMA2_STATE_DATA ;
 int LZMA2_STATE_ERROR ;
 int LZMA2_STATE_FINISHED ;





 int PRF (int ) ;
 int printf (char*,unsigned int) ;

__attribute__((used)) static ELzma2State Lzma2Dec_UpdateState(CLzma2Dec *p, Byte b)
{
  switch (p->state)
  {
    case 133:
      p->isExtraMode = False;
      p->control = b;
      PRF(printf("\n %8X", (unsigned)p->decoder.dicPos));
      PRF(printf(" %02X", (unsigned)b));
      if (b == 0)
        return LZMA2_STATE_FINISHED;
      if (LZMA2_IS_UNCOMPRESSED_STATE(p))
      {
        if (b == LZMA2_CONTROL_COPY_RESET_DIC)
          p->needInitLevel = 0xC0;
        else if (b > 2 || p->needInitLevel == 0xE0)
          return LZMA2_STATE_ERROR;
      }
      else
      {
        if (b < p->needInitLevel)
          return LZMA2_STATE_ERROR;
        p->needInitLevel = 0;
        p->unpackSize = (UInt32)(b & 0x1F) << 16;
      }
      return 129;

    case 129:
      p->unpackSize |= (UInt32)b << 8;
      return 128;

    case 128:
      p->unpackSize |= (UInt32)b;
      p->unpackSize++;
      PRF(printf(" %7u", (unsigned)p->unpackSize));
      return LZMA2_IS_UNCOMPRESSED_STATE(p) ? LZMA2_STATE_DATA : 132;

    case 132:
      p->packSize = (UInt32)b << 8;
      return 131;

    case 131:
      p->packSize |= (UInt32)b;
      p->packSize++;

      PRF(printf(" %5u", (unsigned)p->packSize));
      return (p->control & 0x40) ? 130 : LZMA2_STATE_DATA;

    case 130:
    {
      unsigned lc, lp;
      if (b >= (9 * 5 * 5))
        return LZMA2_STATE_ERROR;
      lc = b % 9;
      b /= 9;
      p->decoder.prop.pb = (Byte)(b / 5);
      lp = b % 5;
      if (lc + lp > LZMA2_LCLP_MAX)
        return LZMA2_STATE_ERROR;
      p->decoder.prop.lc = (Byte)lc;
      p->decoder.prop.lp = (Byte)lp;
      return LZMA2_STATE_DATA;
    }
  }
  return LZMA2_STATE_ERROR;
}
