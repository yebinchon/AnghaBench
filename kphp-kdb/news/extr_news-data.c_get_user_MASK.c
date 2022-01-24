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
struct TYPE_4__ {int user_id; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 TYPE_1__** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static user_t *FUNC2 (int user_id) {
  int i = FUNC1 (user_id);
  if (i >= 0 && User[i]) {
    FUNC0 (i == User[i]->user_id);
  }
  return i >= 0 ? User[i] : 0;
}