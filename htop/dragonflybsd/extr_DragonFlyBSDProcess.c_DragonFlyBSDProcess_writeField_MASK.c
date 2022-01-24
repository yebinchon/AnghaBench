#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {int jid; int jname; int /*<<< orphan*/  kernel; } ;
struct TYPE_5__ {int pid; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  scalar_t__ ProcessField ;
typedef  TYPE_1__ Process ;
typedef  TYPE_2__ DragonFlyBSDProcess ;

/* Variables and functions */
 int* CRT_colors ; 
 size_t DEFAULT_COLOR ; 
#define  JAIL 130 
#define  JID 129 
#define  PID 128 
 char* Process_pidFormat ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

void FUNC3(Process* this, RichString* str, ProcessField field) {
   DragonFlyBSDProcess* fp = (DragonFlyBSDProcess*) this;
   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];
   int n = sizeof(buffer) - 1;
   switch ((int) field) {
   // add Platform-specific fields here
   case PID: FUNC2(buffer, n, Process_pidFormat, (fp->kernel ? -1 : this->pid)); break;
   case JID: FUNC2(buffer, n, Process_pidFormat, fp->jid); break;
   case JAIL:{
      FUNC2(buffer, n, "%-11s ", fp->jname); break;
      if (buffer[11] != '\0') {
         buffer[11] = ' ';
         buffer[12] = '\0';
      }
      break;
   }
   default:
      FUNC0(this, str, field);
      return;
   }
   FUNC1(str, attr, buffer);
}