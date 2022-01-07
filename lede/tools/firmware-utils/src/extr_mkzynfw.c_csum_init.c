
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csum_state {scalar_t__ tmp; scalar_t__ sum; scalar_t__ odd; } ;



void
csum_init(struct csum_state *css)
{
 css->odd = 0;
 css->sum = 0;
 css->tmp = 0;
}
