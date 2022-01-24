#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  inc; TYPE_1__* process; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ InfoScreen ;

/* Variables and functions */
 int /*<<< orphan*/  COLS ; 
 int /*<<< orphan*/ * CRT_colors ; 
 size_t DEFAULT_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PANEL_HEADER_FOCUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(InfoScreen* this) {
   FUNC1(CRT_colors[PANEL_HEADER_FOCUS]);
   FUNC2(0, 0, ' ', COLS);
   FUNC3(0, 0, "Trace of process %d - %s", this->process->pid, this->process->comm);
   FUNC1(CRT_colors[DEFAULT_COLOR]);
   FUNC0(this->inc);
}