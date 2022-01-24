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
typedef  int /*<<< orphan*/  IjkFifoBuffer ;

/* Variables and functions */
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (void*,size_t) ; 

IjkFifoBuffer *FUNC2(size_t nmemb, size_t size)
{
    void *buffer = FUNC0(nmemb, size);
    return FUNC1(buffer, nmemb * size);
}