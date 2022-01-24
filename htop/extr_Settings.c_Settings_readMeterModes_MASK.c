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
struct TYPE_5__ {TYPE_1__* columns; } ;
struct TYPE_4__ {int len; int* modes; } ;
typedef  TYPE_2__ Settings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char*,char,int*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int* FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(Settings* this, char* line, int column) {
   char* trim = FUNC2(line);
   int nIds;
   char** ids = FUNC1(trim, ' ', &nIds);
   FUNC4(trim);
   int len = 0;
   for (int i = 0; ids[i]; i++) {
      len++;
   }
   this->columns[column].len = len;
   int* modes = FUNC5(len, sizeof(int));
   for (int i = 0; i < len; i++) {
      modes[i] = FUNC3(ids[i]);
   }
   FUNC0(ids);
   this->columns[column].modes = modes;
}