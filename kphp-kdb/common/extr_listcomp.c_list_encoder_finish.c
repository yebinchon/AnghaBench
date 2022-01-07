
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int tp; } ;


 int assert (int ) ;
 int interpolative_encoder_finish (struct list_encoder*) ;




 int llrun_encoder_finish (struct list_encoder*) ;

void list_encoder_finish (struct list_encoder *enc) {
  switch (enc->tp) {
  case 130:
  case 131:
    break;
  case 129:
    interpolative_encoder_finish (enc);
    break;
  case 128:
    llrun_encoder_finish (enc);
    break;
  default:
    assert (0);
  }
}
