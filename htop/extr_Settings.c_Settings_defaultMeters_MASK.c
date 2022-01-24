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
struct TYPE_5__ {int cpuCount; TYPE_1__* columns; } ;
struct TYPE_4__ {int len; void** modes; void** names; } ;
typedef  TYPE_2__ Settings ;

/* Variables and functions */
 void* BAR_METERMODE ; 
 void* TEXT_METERMODE ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(Settings* this) {
   int sizes[] = { 3, 3 };
   if (this->cpuCount > 4) {
      sizes[1]++;
   }
   for (int i = 0; i < 2; i++) {
      this->columns[i].names = FUNC0(sizes[i] + 1, sizeof(char*));
      this->columns[i].modes = FUNC0(sizes[i], sizeof(int));
      this->columns[i].len = sizes[i];
   }
   
   int r = 0;
   if (this->cpuCount > 8) {
      this->columns[0].names[0] = FUNC1("LeftCPUs2");
      this->columns[0].modes[0] = BAR_METERMODE;
      this->columns[1].names[r] = FUNC1("RightCPUs2");
      this->columns[1].modes[r++] = BAR_METERMODE;
   } else if (this->cpuCount > 4) {
      this->columns[0].names[0] = FUNC1("LeftCPUs");
      this->columns[0].modes[0] = BAR_METERMODE;
      this->columns[1].names[r] = FUNC1("RightCPUs");
      this->columns[1].modes[r++] = BAR_METERMODE;
   } else {
      this->columns[0].names[0] = FUNC1("AllCPUs");
      this->columns[0].modes[0] = BAR_METERMODE;
   }
   this->columns[0].names[1] = FUNC1("Memory");
   this->columns[0].modes[1] = BAR_METERMODE;
   this->columns[0].names[2] = FUNC1("Swap");
   this->columns[0].modes[2] = BAR_METERMODE;
   
   this->columns[1].names[r] = FUNC1("Tasks");
   this->columns[1].modes[r++] = TEXT_METERMODE;
   this->columns[1].names[r] = FUNC1("LoadAverage");
   this->columns[1].modes[r++] = TEXT_METERMODE;
   this->columns[1].names[r] = FUNC1("Uptime");
   this->columns[1].modes[r++] = TEXT_METERMODE;
}