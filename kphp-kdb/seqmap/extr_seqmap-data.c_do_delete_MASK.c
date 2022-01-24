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
struct lev_seq_delete {int /*<<< orphan*/  data; } ;
struct item {int key_len; } ;

/* Variables and functions */
 scalar_t__ LEV_SEQ_DELETE ; 
 struct lev_seq_delete* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lev_seq_delete*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,int) ; 
 struct item* FUNC4 (int,int const*,int) ; 

int FUNC5 (int key_len, const int *key, int force) {
  struct item *I = FUNC4 (key_len, key, force);
  if (I->key_len == -2) {
    return -2;
  }
  FUNC1 (key_len >= 0 && key_len <= 255);
  struct lev_seq_delete *E = FUNC0 (LEV_SEQ_DELETE + key_len, sizeof (*E) + key_len * 4, 0);
  FUNC3 (E->data, key, 4 * key_len);
  return FUNC2 (E);
}