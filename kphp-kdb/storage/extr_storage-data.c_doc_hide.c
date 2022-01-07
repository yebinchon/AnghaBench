
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int docs; int idx_docs; unsigned long long* Idx_Pos; unsigned long long** Pos; int mutex_insert; } ;
typedef TYPE_1__ volume_t ;


 int STORAGE_ERR_ILLEGAL_LOCAL_ID ;
 unsigned long long STORAGE_SECRET_MASK ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int doc_hide (volume_t *V, int local_id) {
  pthread_mutex_lock (&V->mutex_insert);
  if (local_id < 1 || local_id > V->docs) {
    pthread_mutex_unlock (&V->mutex_insert);
    return STORAGE_ERR_ILLEGAL_LOCAL_ID;
  }
  unsigned long long *pos;
  if (local_id <= V->idx_docs) {
    pos = &(V->Idx_Pos[local_id]);
  } else {
    int i = local_id - V->idx_docs - 1;
    pos = &(V->Pos[i >> 11][i & 2047]);
  }
  *pos ^= STORAGE_SECRET_MASK;
  pthread_mutex_unlock (&V->mutex_insert);
  return 0;
}
