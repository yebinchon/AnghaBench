
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct csum_state {int val; } ;



void
csum8_update(uint8_t *p, uint32_t len, struct csum_state *css)
{
 for ( ; len > 0; len --) {
  css->val += *p++;
 }
}
