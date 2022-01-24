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
struct TYPE_4__ {int chlen; int /*<<< orphan*/  chptr; int /*<<< orphan*/  chstr; } ;
typedef  TYPE_1__ RichString ;

/* Variables and functions */
 int RICHSTRING_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(RichString* this, int len) {
   if (this->chlen <= RICHSTRING_MAXLEN) {
      if (len > RICHSTRING_MAXLEN) {
         this->chptr = FUNC4(FUNC1(len + 1));
         FUNC3(this->chptr, this->chstr, FUNC1(this->chlen));
      }
   } else {
      if (len <= RICHSTRING_MAXLEN) {
         FUNC3(this->chstr, this->chptr, FUNC1(len));
         FUNC2(this->chptr);
         this->chptr = this->chstr;
      } else {
         this->chptr = FUNC5(this->chptr, FUNC1(len + 1));
      }
   }

   FUNC0(this, len, 0);
   this->chlen = len;
}