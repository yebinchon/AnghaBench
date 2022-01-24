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
struct raw_message {scalar_t__ magic; scalar_t__ first; } ;

/* Variables and functions */
 scalar_t__ RM_INIT_MAGIC ; 
 scalar_t__ RM_TMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct raw_message*) ; 

void FUNC3 (struct raw_message *raw) {
  FUNC0 (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  if (raw->first) {
    FUNC1 (raw->first);
  }
  FUNC2 (raw);
}