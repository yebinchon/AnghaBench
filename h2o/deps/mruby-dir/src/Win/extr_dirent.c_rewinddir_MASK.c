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
typedef  int handle_type ;
struct TYPE_4__ {scalar_t__ d_name; } ;
struct TYPE_5__ {int handle; TYPE_1__ result; int /*<<< orphan*/  info; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 

void FUNC2(DIR *dir)
{
    if(dir && dir->handle != -1)
    {
        FUNC0(dir->handle);
        dir->handle = (handle_type) FUNC1(dir->name, &dir->info);
        dir->result.d_name = 0;
    }
    else
    {
        errno = EBADF;
    }
}