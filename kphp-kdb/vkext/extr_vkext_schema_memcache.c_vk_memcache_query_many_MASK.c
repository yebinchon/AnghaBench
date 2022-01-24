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
typedef  int /*<<< orphan*/  zval ;
struct rpc_query {int /*<<< orphan*/  qid; } ;
struct rpc_connection {int dummy; } ;
typedef  int /*<<< orphan*/  HashPosition ;

/* Variables and functions */
 scalar_t__ HASH_KEY_IS_STRING ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rpc_query* FUNC6 (struct rpc_connection*,double,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char**,unsigned int*,unsigned long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11 (struct rpc_connection *c, zval **arr, double timeout, zval **r) {
  HashPosition pos;
  FUNC9 (FUNC0 (arr), &pos);
  zval **zkey;
  //int num = zend_hash_num_elements (Z_ARRVAL_PP (arr));
  //i nt cc = 0;
  FUNC5 (*r);
  while (FUNC7 (FUNC0 (arr), (void **)&zkey, &pos) == SUCCESS) {
    char *key;
    unsigned int key_len;
    unsigned long index;
    if (FUNC8 (FUNC0 (arr), &key, &key_len, &index, 1, &pos) == HASH_KEY_IS_STRING) {
      index = 0;      
    } else {
      key = 0;
    }
    struct rpc_query *q = FUNC6 (c, timeout, zkey);
    FUNC10 (FUNC0(arr), &pos);
    if (key) {
      if (q) {
        FUNC2 (*r, key, q->qid);
      } else {
        FUNC1 (*r, key, 0);
      }
    } else {
      if (q) {
        FUNC4 (*r, index, q->qid);
      } else {
        FUNC3 (*r, index, 0);
      }
    }
  }
  //long long x = do_rpc_queue_create (cc, qids);
  //free (qids);
  //return r;
}