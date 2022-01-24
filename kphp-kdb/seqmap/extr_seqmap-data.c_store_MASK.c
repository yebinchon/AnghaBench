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
struct item {int key_len; scalar_t__ value_len; int time; } ;

/* Variables and functions */
 int NODE_TYPE_PLUS ; 
 int NODE_TYPE_SURE ; 
 int NODE_TYPE_UNSURE ; 
 struct item* FUNC0 (int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct item*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct item*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct item*) ; 
 int /*<<< orphan*/  FUNC5 (struct item*) ; 
 int now ; 
 struct item* FUNC6 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC7 (int E_size, void *E, int key_len, int *key, int value_len, int *value, int delay, int mode) {
  FUNC1 (key_len >= 0 && key_len <= 255);
  FUNC1 (value_len >= 0 && value_len <= (1 << 20));
  FUNC1 (mode >= 1 && mode <= 3);
  
  if (delay <= now && delay > 0) {
    return 0;
  }

  struct item *I = FUNC6 (key_len, key, 0);
  if (I->key_len == -3 && mode != 3) {
    FUNC3 (I, E_size, E);
    return 1;
  }

//  fprintf (stderr, "key_len = %d, value_len = %d, mode = %d\n", I->key_len, I->value_len, mode);
  if (I->key_len >= 0 && I->value_len >= 0) {
    if (!(mode & 2)) { return 0; }
    FUNC4 (I);
    FUNC2 (I, value_len, value);
    I->time = delay;
    FUNC5 (I);
    return 1;
  } else {
    if (!(mode & 1)) { return 0; }
    FUNC4 (I);
    if (I->key_len >= 0) {
      FUNC2 (I, value_len, value);
      I->time = delay;
      FUNC5 (I);
      return 1;
    } else {
      struct item *II = FUNC0 (key_len, key, NODE_TYPE_PLUS | (I->key_len == -3 ? NODE_TYPE_UNSURE : NODE_TYPE_SURE), 0);
      FUNC2 (II, value_len, value);
      II->time = delay;
      FUNC5 (II);
      return 1;
    }
  }
}