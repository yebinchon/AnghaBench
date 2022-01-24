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
struct rpc_cluster_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_KEY_LEN ; 
 int /*<<< orphan*/  TL_ERROR_PROXY_NO_TARGET ; 
 struct rpc_cluster_bucket* FUNC0 (char*,int) ; 
 int FUNC1 (struct rpc_cluster_bucket) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7 (void) {
  FUNC2 (); //op
  int key_len;
  char key[MAX_KEY_LEN + 1];
  key_len = FUNC6 (key, MAX_KEY_LEN);
  if (key_len < 0) {
    FUNC3 ();
    return -1;
  }
  FUNC4 ();
  struct rpc_cluster_bucket *B = FUNC0 (key, key_len);
  if (!B) {
    FUNC5 (TL_ERROR_PROXY_NO_TARGET, "Can not find target for key %.*s%s", key_len <= 30 ? key_len : 27, key, key_len <= 30 ? "" : "...");
    return -1;
  }
  return FUNC1 (*B);
}