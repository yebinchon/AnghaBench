#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  total; int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ Meter ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(Meter* this, char* buffer, int size) {
   int written;
   FUNC1(this);

   written = FUNC0(buffer, this->values[0], size);
   buffer += written;
   if ((size -= written) > 0) {
      *buffer++ = '/';
      size--;
      FUNC0(buffer, this->total, size);
   }
}