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
struct item {int key_len; } ;

/* Variables and functions */
 int NODE_TYPE_MINUS ; 
 int NODE_TYPE_UNSURE ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct item*) ; 
 int /*<<< orphan*/  FUNC3 (struct item*) ; 
 struct item* FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC5 (int E_size, void *E, int key_len, int *key) {
  FUNC1 (key_len >= 0 && key_len <= 255);
  struct item *I = FUNC4 (key_len, key, 0);
  FUNC2 (I);
  int t = I->key_len;
  if (I->key_len >= 0) {
    FUNC3 (I);
  } else {
    if (I->key_len == -3) {
      FUNC0 (key_len, key, NODE_TYPE_MINUS | NODE_TYPE_UNSURE, -1);
    }
  }
  return t != -1;
}