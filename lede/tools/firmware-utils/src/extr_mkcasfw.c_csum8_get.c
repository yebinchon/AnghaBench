
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct csum_state {int val; } ;



uint16_t
csum8_get(struct csum_state *css)
{
 uint8_t t;

 t = css->val;
 return ~t + 1;
}
