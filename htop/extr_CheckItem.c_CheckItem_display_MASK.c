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
struct TYPE_3__ {char* text; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ CheckItem ;

/* Variables and functions */
 size_t CHECK_BOX ; 
 size_t CHECK_MARK ; 
 size_t CHECK_TEXT ; 
 int /*<<< orphan*/ * CRT_colors ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Object* cast, RichString* out) {
   CheckItem* this = (CheckItem*)cast;
   FUNC3 (this != NULL);
   FUNC2(out, CRT_colors[CHECK_BOX], "[");
   if (FUNC0(this))
      FUNC1(out, CRT_colors[CHECK_MARK], "x");
   else
      FUNC1(out, CRT_colors[CHECK_MARK], " ");
   FUNC1(out, CRT_colors[CHECK_BOX], "] ");
   FUNC1(out, CRT_colors[CHECK_TEXT], this->text);
}