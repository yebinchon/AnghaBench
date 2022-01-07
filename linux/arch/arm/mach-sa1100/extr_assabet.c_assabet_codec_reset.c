
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSABET_BCR_NCODEC_RST ;
 int ASSABET_BCR_clear (int ) ;
 int ASSABET_BCR_set (int ) ;
 int adv7171_sleep () ;
 unsigned int codec_nreset ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void assabet_codec_reset(unsigned mask, int set)
{
 unsigned long flags;
 bool old;

 local_irq_save(flags);
 old = !codec_nreset;
 if (set)
  codec_nreset &= ~mask;
 else
  codec_nreset |= mask;

 if (old != !codec_nreset) {
  if (codec_nreset) {
   ASSABET_BCR_set(ASSABET_BCR_NCODEC_RST);
   adv7171_sleep();
  } else {
   ASSABET_BCR_clear(ASSABET_BCR_NCODEC_RST);
  }
 }
 local_irq_restore(flags);
}
