
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sg; } ;
struct ablkcipher_walk {TYPE_1__ out; } ;


 int scatterwalk_advance (TYPE_1__*,unsigned int) ;
 unsigned int scatterwalk_pagelen (TYPE_1__*) ;
 int scatterwalk_start (TYPE_1__*,int ) ;
 int sg_next (int ) ;

__attribute__((used)) static inline void ablkcipher_done_slow(struct ablkcipher_walk *walk,
     unsigned int n)
{
 for (;;) {
  unsigned int len_this_page = scatterwalk_pagelen(&walk->out);

  if (len_this_page > n)
   len_this_page = n;
  scatterwalk_advance(&walk->out, n);
  if (n == len_this_page)
   break;
  n -= len_this_page;
  scatterwalk_start(&walk->out, sg_next(walk->out.sg));
 }
}
