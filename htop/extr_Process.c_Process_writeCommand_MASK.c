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
struct TYPE_5__ {char* comm; int basenameOffset; TYPE_1__* settings; } ;
struct TYPE_4__ {scalar_t__ highlightBaseName; scalar_t__ showProgramPath; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  TYPE_2__ Process ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(Process* this, int attr, int baseattr, RichString* str) {
   int start = FUNC2(str), finish = 0;
   char* comm = this->comm;

   if (this->settings->highlightBaseName || !this->settings->showProgramPath) {
      int i, basename = 0;
      for (i = 0; i < this->basenameOffset; i++) {
         if (comm[i] == '/') {
            basename = i + 1;
         } else if (comm[i] == ':') {
            finish = i + 1;
            break;
         }
      }
      if (!finish) {
         if (this->settings->showProgramPath)
            start += basename;
         else
            comm += basename;
         finish = this->basenameOffset - basename;
      }
      finish += start - 1;
   }

   FUNC0(str, attr, comm);

   if (this->settings->highlightBaseName)
      FUNC1(str, baseattr, start, finish);
}