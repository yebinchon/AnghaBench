
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rnd_seed_a ;
 unsigned int rnd_seed_b ;

__attribute__((used)) static void user_randomize (unsigned seed) {
  seed *= 2654435773U;
  seed /= 42950;
  rnd_seed_a = 7 + 10 * (seed % 100);
  rnd_seed_b = (seed / 100) % 1000;
}
