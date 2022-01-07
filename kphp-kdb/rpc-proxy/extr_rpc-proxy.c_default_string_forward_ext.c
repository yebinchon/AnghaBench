
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster_bucket {int dummy; } ;


 int MAX_KEY_LEN ;
 int TL_ERROR_PROXY_NO_TARGET ;
 struct rpc_cluster_bucket* calculate_key_target (char*,int) ;
 int query_forward (struct rpc_cluster_bucket) ;
 int tl_fetch_int () ;
 int tl_fetch_mark_delete () ;
 int tl_fetch_mark_restore () ;
 int tl_fetch_set_error_format (int ,char*,int,char*,char*) ;
 int tl_fetch_string0 (char*,int ) ;

int default_string_forward_ext (void) {
  tl_fetch_int ();
  int key_len;
  char key[MAX_KEY_LEN + 1];
  key_len = tl_fetch_string0 (key, MAX_KEY_LEN);
  if (key_len < 0) {
    tl_fetch_mark_delete ();
    return -1;
  }
  tl_fetch_mark_restore ();
  struct rpc_cluster_bucket *B = calculate_key_target (key, key_len);
  if (!B) {
    tl_fetch_set_error_format (TL_ERROR_PROXY_NO_TARGET, "Can not find target for key %.*s%s", key_len <= 30 ? key_len : 27, key, key_len <= 30 ? "" : "...");
    return -1;
  }
  return query_forward (*B);
}
