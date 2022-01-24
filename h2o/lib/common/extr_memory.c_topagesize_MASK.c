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

/* Variables and functions */
 int /*<<< orphan*/  _buf ; 
 size_t FUNC0 () ; 
 int /*<<< orphan*/  h2o_buffer_t ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(size_t capacity)
{
    size_t pagesize = FUNC0();
    return (FUNC1(h2o_buffer_t, _buf) + capacity + pagesize - 1) / pagesize * pagesize;
}