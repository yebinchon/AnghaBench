
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {TYPE_1__* poolinfo; } ;
struct TYPE_2__ {int poolwords; } ;


 int EINVAL ;
 int credit_entropy_bits (struct entropy_store*,int) ;
 int min (int,int const) ;

__attribute__((used)) static int credit_entropy_bits_safe(struct entropy_store *r, int nbits)
{
 const int nbits_max = r->poolinfo->poolwords * 32;

 if (nbits < 0)
  return -EINVAL;


 nbits = min(nbits, nbits_max);

 credit_entropy_bits(r, nbits);
 return 0;
}
