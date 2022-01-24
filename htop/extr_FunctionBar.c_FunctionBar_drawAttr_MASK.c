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
struct TYPE_3__ {int size; char** keys; char** functions; } ;
typedef  TYPE_1__ FunctionBar ;

/* Variables and functions */
 int /*<<< orphan*/  COLS ; 
 int* CRT_colors ; 
 scalar_t__ CRT_cursorX ; 
 size_t FUNCTION_BAR ; 
 size_t FUNCTION_KEY ; 
 scalar_t__ LINES ; 
 size_t RESET_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 

void FUNC5(const FunctionBar* this, char* buffer, int attr) {
   FUNC0(CRT_colors[FUNCTION_BAR]);
   FUNC3(LINES-1, 0, ' ', COLS);
   int x = 0;
   for (int i = 0; i < this->size; i++) {
      FUNC0(CRT_colors[FUNCTION_KEY]);
      FUNC2(LINES-1, x, this->keys[i]);
      x += FUNC4(this->keys[i]);
      FUNC0(CRT_colors[FUNCTION_BAR]);
      FUNC2(LINES-1, x, this->functions[i]);
      x += FUNC4(this->functions[i]);
   }
   if (buffer) {
      FUNC0(attr);
      FUNC2(LINES-1, x, buffer);
      CRT_cursorX = x + FUNC4(buffer);
      FUNC1(1);
   } else {
      FUNC1(0);
   }
   FUNC0(CRT_colors[RESET_COLOR]);
}