#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {scalar_t__* values; TYPE_1__* pl; } ;
struct TYPE_5__ {int /*<<< orphan*/  hideKernelThreads; int /*<<< orphan*/  hideUserlandThreads; scalar_t__ highlightThreads; } ;
struct TYPE_4__ {TYPE_2__* settings; } ;
typedef  TYPE_2__ Settings ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_3__ Meter ;

/* Variables and functions */
 int* CRT_colors ; 
 size_t METER_TEXT ; 
 size_t METER_VALUE ; 
 size_t PROCESS_THREAD ; 
 size_t PROCESS_THREAD_BASENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 size_t TASKS_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(Object* cast, RichString* out) {
   Meter* this = (Meter*)cast;
   Settings* settings = this->pl->settings;
   char buffer[20];
   
   int processes = (int) this->values[2];
   
   FUNC2(buffer, sizeof(buffer), "%d", processes);
   FUNC1(out, CRT_colors[METER_VALUE], buffer);
   int threadValueColor = CRT_colors[METER_VALUE];
   int threadCaptionColor = CRT_colors[METER_TEXT];
   if (settings->highlightThreads) {
      threadValueColor = CRT_colors[PROCESS_THREAD_BASENAME];
      threadCaptionColor = CRT_colors[PROCESS_THREAD];
   }
   if (!settings->hideUserlandThreads) {
      FUNC0(out, CRT_colors[METER_TEXT], ", ");
      FUNC2(buffer, sizeof(buffer), "%d", (int)this->values[1]);
      FUNC0(out, threadValueColor, buffer);
      FUNC0(out, threadCaptionColor, " thr");
   }
   if (!settings->hideKernelThreads) {
      FUNC0(out, CRT_colors[METER_TEXT], ", ");
      FUNC2(buffer, sizeof(buffer), "%d", (int)this->values[0]);
      FUNC0(out, threadValueColor, buffer);
      FUNC0(out, threadCaptionColor, " kthr");
   }
   FUNC0(out, CRT_colors[METER_TEXT], "; ");
   FUNC2(buffer, sizeof(buffer), "%d", (int)this->values[3]);
   FUNC0(out, CRT_colors[TASKS_RUNNING], buffer);
   FUNC0(out, CRT_colors[METER_TEXT], " running");
}