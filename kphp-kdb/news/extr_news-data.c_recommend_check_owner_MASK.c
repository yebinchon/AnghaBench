#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ n; } ;

/* Variables and functions */
 TYPE_1__ forbidden_owners_hashset ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__ mandatory_owners_hashset ; 

inline int FUNC1 (int owner) {
  if (mandatory_owners_hashset.n && !FUNC0 (&mandatory_owners_hashset, owner)) {
    return 0;
  }
  return !FUNC0 (&forbidden_owners_hashset, owner);
}