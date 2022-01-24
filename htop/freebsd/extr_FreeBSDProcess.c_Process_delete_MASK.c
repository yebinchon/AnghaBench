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
struct TYPE_3__ {struct TYPE_3__* jname; } ;
typedef  int /*<<< orphan*/  Process ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ FreeBSDProcess ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(Object* cast) {
   FreeBSDProcess* this = (FreeBSDProcess*) cast;
   FUNC0((Process*)cast);
   FUNC1(this->jname);
   FUNC1(this);
}