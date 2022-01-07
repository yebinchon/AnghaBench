
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct csum_state {int dummy; } ;


 int csum_get (struct csum_state*) ;
 int csum_init (struct csum_state*) ;
 int csum_update (int *,int ,struct csum_state*) ;

uint16_t
csum_buf(uint8_t *p, uint32_t len)
{
 struct csum_state css;

 csum_init(&css);
 csum_update(p, len, &css);
 return csum_get(&css);

}
