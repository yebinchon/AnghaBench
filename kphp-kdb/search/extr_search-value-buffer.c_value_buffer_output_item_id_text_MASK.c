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
struct value_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (struct value_buffer*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct value_buffer*,int) ; 

__attribute__((used)) static void FUNC3 (struct value_buffer *B, long long item_id) {
  int t = FUNC0 (item_id);
  if (t) {
    FUNC2 (B, (int) item_id);
    FUNC1 (B, '_');
    FUNC2 (B, (int) t);
  } else {
    FUNC2 (B, (int) item_id);
  }
}