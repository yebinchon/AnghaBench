
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct csum_state {int size; } ;




 int csum16_get (struct csum_state*) ;
 int csum8_get (struct csum_state*) ;

uint16_t
csum_get(struct csum_state *css)
{
 uint16_t ret;

 switch (css->size) {
 case 128:
  ret = csum8_get(css);
  break;
 case 129:
  ret = csum16_get(css);
  break;
 }

 return ret;
}
