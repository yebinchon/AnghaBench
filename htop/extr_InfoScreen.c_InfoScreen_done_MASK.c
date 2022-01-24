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
struct TYPE_4__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  inc; scalar_t__ display; } ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ InfoScreen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

InfoScreen* FUNC3(InfoScreen* this) {
   FUNC1((Object*)this->display);
   FUNC0(this->inc);
   FUNC2(this->lines);
   return this;
}