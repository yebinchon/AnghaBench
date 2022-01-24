#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RichString ;
typedef  int ProcessField ;
typedef  int /*<<< orphan*/  Process ;

/* Variables and functions */
 int* CRT_colors ; 
 size_t DEFAULT_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

void FUNC2(Process* this, RichString* str, ProcessField field) {
   //OpenBSDProcess* fp = (OpenBSDProcess*) this;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   //int n = sizeof(buffer) - 1;
   switch (field) {
   // add OpenBSD-specific fields here
   default:
      FUNC0(this, str, field);
      return;
   }
   FUNC1(str, attr, buffer);
}