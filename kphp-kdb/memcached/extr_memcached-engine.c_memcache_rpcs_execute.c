
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_query_header {int op; scalar_t__ actor_id; int qid; } ;
struct connection {int In; } ;


 int RPC_INVOKE_REQ ;
 int SKIP_ALL_BYTES ;
 int TL_ERROR_UNKNOWN ;
 int TL_ERROR_UNKNOWN_FUNCTION_ID ;







 scalar_t__ advance_skip_read_ptr (int *,scalar_t__) ;
 int assert (int) ;
 int mct_add ;
 int mct_replace ;
 int mct_set ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_init (struct connection*,int) ;
 int tl_fetch_int () ;
 int tl_fetch_query_header (struct tl_query_header*) ;
 int tl_fetch_set_error (char*,int ) ;
 int tl_fetch_set_error_format (int ,char*,int) ;
 scalar_t__ tl_fetch_unread () ;
 int tl_memcache_delete () ;
 int tl_memcache_get () ;
 int tl_memcache_incr (int) ;
 int tl_memcache_store (int ) ;
 int tl_store_end () ;
 int tl_store_init_keep_error (struct connection*,int ) ;

int memcache_rpcs_execute (struct connection *c, int op, int len) {
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }
  tl_fetch_init (c, len - 4);
  struct tl_query_header h;
  tl_fetch_query_header (&h);
  tl_store_init_keep_error (c, h.qid);
  assert (h.op == op || tl_fetch_error ());

  if (h.actor_id) {
    tl_fetch_set_error ("Memcached only support actor_id = 0", 0);
  }

  int f = tl_fetch_int ();
  int result = -1;

  switch (f) {
  case 128:
    result = tl_memcache_store (mct_set);
    break;
  case 134:
    result = tl_memcache_store (mct_add);
    break;
  case 129:
    result = tl_memcache_store (mct_replace);
    break;
  case 130:
    result = tl_memcache_incr (0);
    break;
  case 133:
    result = tl_memcache_incr (1);
    break;
  case 132:
    result = tl_memcache_delete ();
    break;
  case 131:
    result = tl_memcache_get ();
    break;
  default:
    tl_fetch_set_error_format (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown function id 0x%08x", f);
  }

  if (result < 0) {
    tl_fetch_set_error ("Unknown error occured", TL_ERROR_UNKNOWN);
  }
  tl_store_end ();
  assert (advance_skip_read_ptr (&c->In, 4 + tl_fetch_unread ()) == 4 + tl_fetch_unread ());
  return 0;

}
