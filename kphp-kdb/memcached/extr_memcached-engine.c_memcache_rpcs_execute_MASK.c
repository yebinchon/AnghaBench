#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_query_header {int op; scalar_t__ actor_id; int /*<<< orphan*/  qid; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int RPC_INVOKE_REQ ; 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  TL_ERROR_UNKNOWN ; 
 int /*<<< orphan*/  TL_ERROR_UNKNOWN_FUNCTION_ID ; 
#define  TL_MEMCACHE_ADD 134 
#define  TL_MEMCACHE_DECR 133 
#define  TL_MEMCACHE_DELETE 132 
#define  TL_MEMCACHE_GET 131 
#define  TL_MEMCACHE_INCR 130 
#define  TL_MEMCACHE_REPLACE 129 
#define  TL_MEMCACHE_SET 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mct_add ; 
 int /*<<< orphan*/  mct_replace ; 
 int /*<<< orphan*/  mct_set ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tl_query_header*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct connection*,int /*<<< orphan*/ ) ; 

int FUNC15 (struct connection *c, int op, int len) {
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }
  FUNC3 (c, len - 4);
  struct tl_query_header h;
  FUNC5 (&h);
  FUNC14 (c, h.qid);
  FUNC1 (h.op == op || FUNC2 ());

  if (h.actor_id) {
    FUNC6 ("Memcached only support actor_id = 0", 0);
  }

  int f = FUNC4 ();
  int result = -1;

  switch (f) {
  case TL_MEMCACHE_SET:
    result = FUNC12 (mct_set);
    break;
  case TL_MEMCACHE_ADD:
    result = FUNC12 (mct_add);
    break;
  case TL_MEMCACHE_REPLACE:
    result = FUNC12 (mct_replace);
    break;
  case TL_MEMCACHE_INCR:
    result = FUNC11 (0);
    break;
  case TL_MEMCACHE_DECR:
    result = FUNC11 (1);
    break;
  case TL_MEMCACHE_DELETE:
    result = FUNC9 ();
    break;
  case TL_MEMCACHE_GET:
    result = FUNC10 ();
    break;
  default:
    FUNC7 (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown function id 0x%08x", f);
  }

  if (result < 0) {
    FUNC6 ("Unknown error occured", TL_ERROR_UNKNOWN);
  }
  FUNC13 ();
  FUNC1 (FUNC0 (&c->In, 4 + FUNC8 ()) == 4 + FUNC8 ());
  return 0;

}