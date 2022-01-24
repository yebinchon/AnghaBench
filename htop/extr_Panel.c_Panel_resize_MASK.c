#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int w; int h; int needsRedraw; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ Panel ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(Panel* this, int w, int h) {
   FUNC1 (this != NULL);

   if (FUNC0(this->header) > 0)
      h--;
   this->w = w;
   this->h = h;
   this->needsRedraw = true;
}