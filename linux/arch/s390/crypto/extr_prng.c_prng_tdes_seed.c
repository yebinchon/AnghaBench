
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
typedef int __u64 ;
struct TYPE_3__ {scalar_t__ reseed_counter; scalar_t__ parm_block; } ;
struct TYPE_4__ {TYPE_1__ prngws; } ;


 int BUG_ON (int) ;
 int get_random_bytes (char*,int) ;
 TYPE_2__* prng_data ;
 int prng_tdes_add_entropy () ;

__attribute__((used)) static void prng_tdes_seed(int nbytes)
{
 char buf[16];
 int i = 0;

 BUG_ON(nbytes > sizeof(buf));

 get_random_bytes(buf, nbytes);


 while (nbytes >= 8) {
  *((__u64 *)prng_data->prngws.parm_block) ^= *((__u64 *)(buf+i));
  prng_tdes_add_entropy();
  i += 8;
  nbytes -= 8;
 }
 prng_tdes_add_entropy();
 prng_data->prngws.reseed_counter = 0;
}
