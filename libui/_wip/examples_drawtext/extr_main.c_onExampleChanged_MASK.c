#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiCombobox ;
struct TYPE_2__ {int /*<<< orphan*/  panel; } ;

/* Variables and functions */
 size_t curExample ; 
 int /*<<< orphan*/  exampleList ; 
 TYPE_1__** examples ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uiCombobox *c, void *data)
{
	FUNC2(examples[curExample]->panel);
	curExample = FUNC1(exampleList);
	FUNC3(examples[curExample]->panel);
	FUNC0();
}