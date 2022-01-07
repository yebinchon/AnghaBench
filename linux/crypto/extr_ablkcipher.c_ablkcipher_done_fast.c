
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_walk {int out; int in; } ;


 int scatterwalk_advance (int *,unsigned int) ;

__attribute__((used)) static inline void ablkcipher_done_fast(struct ablkcipher_walk *walk,
     unsigned int n)
{
 scatterwalk_advance(&walk->in, n);
 scatterwalk_advance(&walk->out, n);
}
