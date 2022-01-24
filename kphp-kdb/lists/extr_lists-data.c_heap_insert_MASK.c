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
typedef  int /*<<< orphan*/  value_t ;
struct heap_entry {int /*<<< orphan*/  global_id; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  global_id_t ;

/* Variables and functions */
 struct heap_entry* H ; 
 scalar_t__ HN ; 
 scalar_t__ __vsort_limit ; 
 scalar_t__ FUNC0 (struct heap_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct heap_entry *FUNC3 (value_t value, global_id_t global_id) {
  int i;
  if (HN == __vsort_limit) {
    if (FUNC0 (&H[1], value, global_id) >= 0) {
      return 0;
    }
    i = FUNC1 (value, global_id);
  } else {
    i = FUNC2 (value, global_id);
  }
  H[i].value = value;
  H[i].global_id = global_id;
  return &H[i];
}