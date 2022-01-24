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
struct TYPE_5__ {char* chars; size_t size; } ;
typedef  TYPE_1__ erow ;
struct TYPE_6__ {int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 TYPE_4__ E ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (char*,size_t) ; 

void FUNC3(erow *row, char *s, size_t len) {
    row->chars = FUNC2(row->chars,row->size+len+1);
    FUNC1(row->chars+row->size,s,len);
    row->size += len;
    row->chars[row->size] = '\0';
    FUNC0(row);
    E.dirty++;
}