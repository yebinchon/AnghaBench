
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct csum_state {int sum; } ;


 int csum_update (char*,int,struct csum_state*) ;

uint16_t
csum_get(struct csum_state *css)
{
 char pad = 0;

 csum_update(&pad, 1, css);
 return css->sum;
}
