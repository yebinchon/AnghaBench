
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long long volume_id; int mutex_insert; int mutex_write; } ;
typedef TYPE_1__ volume_t ;


 unsigned int HASH_VOLUMES_MOD ;
 TYPE_1__** HP ;
 scalar_t__ MAX_VOLUMES ;
 int assert (int) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ volumes ;
 TYPE_1__* zmalloc0 (int) ;

volume_t *get_volume_f (unsigned long long volume_id, int force) {
  unsigned int h1 = (unsigned int) volume_id % HASH_VOLUMES_MOD;
  if (HP[h1]) {
    if (HP[h1]->volume_id == volume_id) {
      return HP[h1];
    }
    if ( (h1 += 13) >= HASH_VOLUMES_MOD) {
      h1 -= HASH_VOLUMES_MOD;
    }
  }
  if (!force) {
    return ((void*)0);
  }
  assert (volumes < MAX_VOLUMES);
  volumes++;
  volume_t *V = zmalloc0 (sizeof (volume_t));
  V->volume_id = volume_id;
  pthread_mutex_init (&V->mutex_write, ((void*)0));
  pthread_mutex_init (&V->mutex_insert, ((void*)0));
  return HP[h1] = V;
}
