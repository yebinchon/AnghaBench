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
struct fd {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct fd*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct fd*,int*) ; 

__attribute__((used)) static ssize_t FUNC2(struct fd *fd, void *buf, size_t size) {
    int err = FUNC0(fd, buf, size);
    FUNC1(fd, &err);
    return err;
}