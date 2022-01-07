
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char u_int8_t ;
struct cm4000_dev {int flags1; int baudv; int atr; TYPE_2__* p_dev; } ;
struct TYPE_7__ {unsigned char stopbits; int atr_len; int atr; } ;
struct TYPE_6__ {TYPE_1__** resource; } ;
struct TYPE_5__ {unsigned int start; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DEBUGP (int,struct cm4000_dev*,char*,...) ;
 int REG_BAUDRATE (unsigned int) ;
 int REG_FLAGS1 (unsigned int) ;
 int REG_STOPBITS (unsigned int) ;
 TYPE_3__* card_fixups ;
 int memcmp (int ,int ,int ) ;
 int xoutb (unsigned char,int ) ;

__attribute__((used)) static void set_cardparameter(struct cm4000_dev *dev)
{
 int i;
 unsigned int iobase = dev->p_dev->resource[0]->start;
 u_int8_t stopbits = 0x02;

 DEBUGP(3, dev, "-> set_cardparameter\n");

 dev->flags1 = dev->flags1 | (((dev->baudv - 1) & 0x0100) >> 8);
 xoutb(dev->flags1, REG_FLAGS1(iobase));
 DEBUGP(5, dev, "flags1 = 0x%02x\n", dev->flags1);


 xoutb((unsigned char)((dev->baudv - 1) & 0xFF), REG_BAUDRATE(iobase));

 DEBUGP(5, dev, "baudv = %i -> write 0x%02x\n", dev->baudv,
       ((dev->baudv - 1) & 0xFF));


 for (i = 0; i < ARRAY_SIZE(card_fixups); i++) {
  if (!memcmp(dev->atr, card_fixups[i].atr,
       card_fixups[i].atr_len))
   stopbits = card_fixups[i].stopbits;
 }
 xoutb(stopbits, REG_STOPBITS(iobase));

 DEBUGP(3, dev, "<- set_cardparameter\n");
}
