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
struct TYPE_4__ {int size; } ;
typedef  TYPE_1__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(jv a) {
  FUNC1(FUNC0(a, JV_KIND_ARRAY));
  return a.size;
}