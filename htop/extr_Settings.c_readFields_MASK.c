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
struct TYPE_2__ {int flags; scalar_t__ name; } ;
typedef  int ProcessField ;

/* Variables and functions */
 int NULL_PROCESSFIELD ; 
 int Platform_numberOfFields ; 
 TYPE_1__* Process_fields ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char*,char,int*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(ProcessField* fields, int* flags, const char* line) {
   char* trim = FUNC2(line);
   int nIds;
   char** ids = FUNC1(trim, ' ', &nIds);
   FUNC4(trim);
   int i, j;
   *flags = 0;
   for (j = 0, i = 0; i < Platform_numberOfFields && ids[i]; i++) {
      // This "+1" is for compatibility with the older enum format.
      int id = FUNC3(ids[i]) + 1;
      if (id > 0 && Process_fields[id].name && id < Platform_numberOfFields) {
         fields[j] = id;
         *flags |= Process_fields[id].flags;
         j++;
      }
   }
   fields[j] = NULL_PROCESSFIELD;
   FUNC0(ids);
}