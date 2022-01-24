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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_6__ {int /*<<< orphan*/ ** columns; } ;
struct TYPE_5__ {scalar_t__ param; } ;
typedef  TYPE_1__ Meter ;
typedef  TYPE_2__ Header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,scalar_t__) ; 

char* FUNC6(Header* this, int i, int column) {
   Vector* meters = this->columns[column];
   Meter* meter = (Meter*) FUNC1(meters, i);

   int nameLen = FUNC2(FUNC0(meter));
   int len = nameLen + 100;
   char* name = FUNC4(len);
   FUNC3(name, FUNC0(meter), nameLen);
   name[nameLen] = '\0';
   if (meter->param)
      FUNC5(name + nameLen, len - nameLen, "(%d)", meter->param);

   return name;
}