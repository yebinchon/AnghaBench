#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ chars; } ;
typedef  TYPE_1__ erow ;
struct TYPE_6__ {int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 TYPE_4__ E ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

void FUNC2(erow *row, int at) {
    if (row->size <= at) return;
    FUNC1(row->chars+at,row->chars+at+1,row->size-at);
    FUNC0(row);
    row->size--;
    E.dirty++;
}