
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume_t ;


 int STORAGE_ERR_UNKNOWN_VOLUME_ID ;
 int * get_volume_f (long long,int ) ;
 int md5_doc_lookup (int *,unsigned char*,unsigned long long,unsigned long long*) ;

int do_md5_get_doc (long long volume_id, unsigned char md5[16], unsigned long long secret, volume_t **V, unsigned long long *offset) {
  *V = get_volume_f (volume_id, 0);
  if (*V == ((void*)0)) {
    return STORAGE_ERR_UNKNOWN_VOLUME_ID;
  }
  int r = md5_doc_lookup (*V, md5, secret, offset);
  if (r) {
    return r;
  }
  return 0;
}
