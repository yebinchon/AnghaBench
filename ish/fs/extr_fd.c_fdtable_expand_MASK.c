#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fdtable {unsigned int size; } ;
typedef  int fd_t ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE_ ; 
 int _EMFILE ; 
 int FUNC0 (struct fdtable*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fdtable *table, fd_t max) {
    unsigned size = max + 1;
    if (size > FUNC1(RLIMIT_NOFILE_))
        return _EMFILE;
    if (table->size >= size)
        return 0;
    return FUNC0(table, max + 1);
}