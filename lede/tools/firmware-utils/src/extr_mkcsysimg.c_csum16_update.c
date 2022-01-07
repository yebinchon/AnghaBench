
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct csum_state {int odd; int tmp; int val; } ;


 scalar_t__ LE16_TO_HOST (int) ;

void
csum16_update(uint8_t *p, uint32_t len, struct csum_state *css)
{
 uint16_t t;

 if (css->odd) {
  t = css->tmp + (p[0]<<8);
  css->val += LE16_TO_HOST(t);
  css->odd = 0;
  len--;
  p++;
 }

 for ( ; len > 1; len -= 2, p +=2 ) {
  t = p[0] + (p[1] << 8);
  css->val += LE16_TO_HOST(t);
 }

 if (len == 1) {
  css->tmp = p[0];
  css->odd = 1;
 }
}
