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
struct cyclic_views_entry {int time; } ;

/* Variables and functions */
 struct cyclic_views_entry* CV_w ; 
 struct cyclic_views_entry* CViews ; 
 int CYCLIC_VIEWS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cyclic_views_entry*) ; 

struct cyclic_views_entry *FUNC1 (struct cyclic_views_entry *CV, int cutoff_time) {
  while (CV != CV_w) {
    if (CV->time > cutoff_time) {
      return CV;
    }
    FUNC0 (CV);
    if (++CV == CViews + CYCLIC_VIEWS_BUFFER_SIZE) {
      CV = CViews;
      break;
    }
  }
  while (CV < CV_w) {
    if (CV->time > cutoff_time) {
      return CV;
    }
    FUNC0 (CV);
    CV++;
  }
  return CV;
}