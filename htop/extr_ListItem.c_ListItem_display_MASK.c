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
struct TYPE_2__ {int /*<<< orphan*/  value; scalar_t__ moving; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ ListItem ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 scalar_t__ CRT_utf8 ; 
 size_t DEFAULT_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Object* cast, RichString* out) {
   ListItem* const this = (ListItem*)cast;
   FUNC3 (this != NULL);
   /*
   int len = strlen(this->value)+1;
   char buffer[len+1];
   xSnprintf(buffer, len, "%s", this->value);
   */
   if (this->moving) {
      FUNC2(out, CRT_colors[DEFAULT_COLOR],
#ifdef HAVE_LIBNCURSESW
            CRT_utf8 ? "↕ " :
#endif
            "+ ");
   } else {
      FUNC1(out);
   }
   FUNC0(out, CRT_colors[DEFAULT_COLOR], this->value/*buffer*/);
}