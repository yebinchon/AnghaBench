
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EHV_PIC_INFO (int ) ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int VECPRI_POLARITY_NEGATIVE ;
 int VECPRI_POLARITY_POSITIVE ;
 int VECPRI_SENSE_EDGE ;
 int VECPRI_SENSE_LEVEL ;

__attribute__((used)) static unsigned int ehv_pic_type_to_vecpri(unsigned int type)
{


 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  return EHV_PIC_INFO(VECPRI_SENSE_EDGE) |
         EHV_PIC_INFO(VECPRI_POLARITY_POSITIVE);

 case 131:
 case 132:
  return EHV_PIC_INFO(VECPRI_SENSE_EDGE) |
         EHV_PIC_INFO(VECPRI_POLARITY_NEGATIVE);

 case 129:
  return EHV_PIC_INFO(VECPRI_SENSE_LEVEL) |
         EHV_PIC_INFO(VECPRI_POLARITY_POSITIVE);

 case 128:
 default:
  return EHV_PIC_INFO(VECPRI_SENSE_LEVEL) |
         EHV_PIC_INFO(VECPRI_POLARITY_NEGATIVE);
 }
}
