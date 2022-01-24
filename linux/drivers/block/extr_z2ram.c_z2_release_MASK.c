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
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int current_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  z2ram_mutex ; 

__attribute__((used)) static void
FUNC2(struct gendisk *disk, fmode_t mode)
{
    FUNC0(&z2ram_mutex);
    if ( current_device == -1 ) {
    	FUNC1(&z2ram_mutex);
    	return;
    }
    FUNC1(&z2ram_mutex);
    /*
     * FIXME: unmap memory
     */
}