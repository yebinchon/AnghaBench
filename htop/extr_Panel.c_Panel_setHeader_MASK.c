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
struct TYPE_3__ {int needsRedraw; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ Panel ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 size_t PANEL_HEADER_FOCUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

inline void FUNC1(Panel* this, const char* header) {
   FUNC0(&(this->header), CRT_colors[PANEL_HEADER_FOCUS], header);
   this->needsRedraw = true;
}