
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ ARCH_RNG_BUF_SIZE ;
 scalar_t__ arch_rng_buf ;
 scalar_t__ arch_rng_buf_idx ;
 int arch_rng_lock ;
 int atomic64_add (unsigned int,int *) ;
 int memcpy (int *,scalar_t__,unsigned int) ;
 int s390_arch_random_counter ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

bool s390_arch_random_generate(u8 *buf, unsigned int nbytes)
{

 if (!spin_trylock(&arch_rng_lock))
  return 0;


 arch_rng_buf_idx -= nbytes;
 if (arch_rng_buf_idx < ARCH_RNG_BUF_SIZE) {
  memcpy(buf, arch_rng_buf + arch_rng_buf_idx, nbytes);
  atomic64_add(nbytes, &s390_arch_random_counter);
  spin_unlock(&arch_rng_lock);
  return 1;
 }


 spin_unlock(&arch_rng_lock);

 return 0;
}
