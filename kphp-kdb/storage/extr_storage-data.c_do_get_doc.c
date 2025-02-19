
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int docs; unsigned long long cur_log_pos; int mutex_write; } ;
typedef TYPE_1__ volume_t ;
struct lev_storage_file {int dummy; } ;
struct lev_crc32 {int dummy; } ;


 int STORAGE_ERR_UNKNOWN_VOLUME_ID ;
 int STORAGE_ERR_WRONG_SECRET ;
 int assert (int) ;
 int doc_lookup (TYPE_1__*,int,unsigned long long,unsigned long long*) ;
 TYPE_1__* get_volume_f (long long,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int do_get_doc (long long volume_id, int local_id, unsigned long long secret, volume_t **V, unsigned long long *offset, int *filesize) {
  *V = get_volume_f (volume_id, 0);
  if (*V == ((void*)0)) {
    return STORAGE_ERR_UNKNOWN_VOLUME_ID;
  }
  int r = doc_lookup (*V, local_id, secret, offset);
  if (r) {
    return r;
  }

  if (filesize) {
    unsigned long long o = *offset;
    if (local_id < (*V)->docs) {
      r = doc_lookup (*V, local_id + 1, 0, &o);
    } else {
      pthread_mutex_lock (&(*V)->mutex_write);
      if (local_id < (*V)->docs) {
        pthread_mutex_unlock (&(*V)->mutex_write);
        r = doc_lookup (*V, local_id + 1, 0, &o);
      } else {
        assert (local_id == (*V)->docs);
        o = (*V)->cur_log_pos;
        pthread_mutex_unlock (&(*V)->mutex_write);
        r = 0;
      }
    }
    if (!r || r == STORAGE_ERR_WRONG_SECRET) {
      *filesize = (o - *offset) - (sizeof (struct lev_storage_file) + sizeof (struct lev_crc32));
    }
  }
  return 0;
}
