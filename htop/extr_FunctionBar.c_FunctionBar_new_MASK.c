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
struct TYPE_3__ {int staticData; char** keys; int* events; int size; void** functions; } ;
typedef  TYPE_1__ FunctionBar ;

/* Variables and functions */
 int* FunctionBar_FEvents ; 
 scalar_t__ FunctionBar_FKeys ; 
 char** FunctionBar_FLabels ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (char const* const) ; 

FunctionBar* FUNC2(const char* const* functions, const char* const* keys, const int* events) {
   FunctionBar* this = FUNC0(1, sizeof(FunctionBar));
   this->functions = FUNC0(16, sizeof(char*));
   if (!functions) {
      functions = FunctionBar_FLabels;
   }
   for (int i = 0; i < 15 && functions[i]; i++) {
      this->functions[i] = FUNC1(functions[i]);
   }
   if (keys && events) {
      this->staticData = false; 
      this->keys = FUNC0(15, sizeof(char*));
      this->events = FUNC0(15, sizeof(int));
      int i = 0;
      while (i < 15 && functions[i]) {
         this->keys[i] = FUNC1(keys[i]);
         this->events[i] = events[i];
         i++;
      }
      this->size = i;
   } else {
      this->staticData = true;
      this->keys = (char**) FunctionBar_FKeys;
      this->events = FunctionBar_FEvents;
      this->size = 10;
   }
   return this;
}