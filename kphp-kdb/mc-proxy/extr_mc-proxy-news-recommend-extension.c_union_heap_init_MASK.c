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
struct union_heap_entry {int dummy; } ;

/* Variables and functions */
 int UH ; 
 int UH_allocated ; 
 int UH_limit ; 
 scalar_t__ UH_size ; 
 scalar_t__ UH_total ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (int size) {
  if (UH_allocated < size) {
    if (UH_allocated) {
      FUNC1 (UH);
    }
    UH = FUNC2 (sizeof (struct union_heap_entry) * (size + 1));
    FUNC0 (UH);
    UH_allocated = size;
  }
  FUNC0 (size <= UH_allocated);
  UH_limit = size;
  UH_size = 0;
  UH_total = 0;
}