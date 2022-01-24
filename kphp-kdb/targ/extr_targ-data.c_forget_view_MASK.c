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
struct cyclic_views_entry {int /*<<< orphan*/  ad_id; } ;
struct advert {scalar_t__ recent_views; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct advert* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2 (struct cyclic_views_entry *CV) {
  struct advert *A = FUNC1 (CV->ad_id);
  FUNC0 (!A || --A->recent_views >= 0); 
}