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
struct tl_query_header {scalar_t__ ref_cnt; int string_forward_keys_num; scalar_t__* string_forward_keys; scalar_t__ string_forward; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_query_header*,int) ; 

void FUNC3 (struct tl_query_header *h) {
  h->ref_cnt --;
  FUNC0 (h->ref_cnt >= 0);
  if (h->ref_cnt) { return; }
  if (h->string_forward) {
    FUNC1 (h->string_forward);
  }
  int i;
  for (i = 0; i < h->string_forward_keys_num; i++) if (h->string_forward_keys[i]) {
    FUNC1 (h->string_forward_keys[i]);
  }
  FUNC2 (h, sizeof (*h));
}