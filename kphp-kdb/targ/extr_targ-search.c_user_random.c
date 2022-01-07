
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uid; } ;
typedef TYPE_1__ user_t ;


 unsigned int rnd_seed_a ;
 unsigned int rnd_seed_b ;

__attribute__((used)) static int user_random (user_t *U) {
  return ((unsigned) U->uid * rnd_seed_a + rnd_seed_b) % 1000;
}
