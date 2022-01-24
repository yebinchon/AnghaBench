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
struct TYPE_6__ {scalar_t__ param; scalar_t__* values; TYPE_2__* pl; } ;
struct TYPE_5__ {scalar_t__ cpuCount; TYPE_1__* settings; } ;
struct TYPE_4__ {scalar_t__ detailedCPUTime; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_3__ Meter ;

/* Variables and functions */
 size_t CPU_GUEST ; 
 size_t CPU_IOWAIT ; 
 size_t CPU_IRQ ; 
 size_t CPU_KERNEL ; 
 size_t CPU_METER_GUEST ; 
 size_t CPU_METER_IOWAIT ; 
 size_t CPU_METER_IRQ ; 
 size_t CPU_METER_KERNEL ; 
 size_t CPU_METER_NICE ; 
 size_t CPU_METER_NORMAL ; 
 size_t CPU_METER_SOFTIRQ ; 
 size_t CPU_METER_STEAL ; 
 size_t CPU_NICE_TEXT ; 
 size_t CPU_NORMAL ; 
 size_t CPU_SOFTIRQ ; 
 size_t CPU_STEAL ; 
 int /*<<< orphan*/ * CRT_colors ; 
 size_t METER_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(Object* cast, RichString* out) {
   char buffer[50];
   Meter* this = (Meter*)cast;
   FUNC1(out);
   if (this->param > this->pl->cpuCount) {
      FUNC0(out, CRT_colors[METER_TEXT], "absent");
      return;
   }
   FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_NORMAL]);
   FUNC0(out, CRT_colors[METER_TEXT], ":");
   FUNC0(out, CRT_colors[CPU_NORMAL], buffer);
   if (this->pl->settings->detailedCPUTime) {
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_KERNEL]);
      FUNC0(out, CRT_colors[METER_TEXT], "sy:");
      FUNC0(out, CRT_colors[CPU_KERNEL], buffer);
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_NICE]);
      FUNC0(out, CRT_colors[METER_TEXT], "ni:");
      FUNC0(out, CRT_colors[CPU_NICE_TEXT], buffer);
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_IRQ]);
      FUNC0(out, CRT_colors[METER_TEXT], "hi:");
      FUNC0(out, CRT_colors[CPU_IRQ], buffer);
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_SOFTIRQ]);
      FUNC0(out, CRT_colors[METER_TEXT], "si:");
      FUNC0(out, CRT_colors[CPU_SOFTIRQ], buffer);
      if (this->values[CPU_METER_STEAL]) {
         FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_STEAL]);
         FUNC0(out, CRT_colors[METER_TEXT], "st:");
         FUNC0(out, CRT_colors[CPU_STEAL], buffer);
      }
      if (this->values[CPU_METER_GUEST]) {
         FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_GUEST]);
         FUNC0(out, CRT_colors[METER_TEXT], "gu:");
         FUNC0(out, CRT_colors[CPU_GUEST], buffer);
      }
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_IOWAIT]);
      FUNC0(out, CRT_colors[METER_TEXT], "wa:");
      FUNC0(out, CRT_colors[CPU_IOWAIT], buffer);
   } else {
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_KERNEL]);
      FUNC0(out, CRT_colors[METER_TEXT], "sys:");
      FUNC0(out, CRT_colors[CPU_KERNEL], buffer);
      FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_NICE]);
      FUNC0(out, CRT_colors[METER_TEXT], "low:");
      FUNC0(out, CRT_colors[CPU_NICE_TEXT], buffer);
      if (this->values[CPU_METER_IRQ]) {
         FUNC2(buffer, sizeof(buffer), "%5.1f%% ", this->values[CPU_METER_IRQ]);
         FUNC0(out, CRT_colors[METER_TEXT], "vir:");
         FUNC0(out, CRT_colors[CPU_GUEST], buffer);
      }
   }
}