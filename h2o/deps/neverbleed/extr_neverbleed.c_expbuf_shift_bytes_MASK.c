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
struct expbuf_t {void* start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct expbuf_t*,size_t*) ; 
 size_t FUNC1 (struct expbuf_t*) ; 

__attribute__((used)) static void *FUNC2(struct expbuf_t *buf, size_t *l)
{
    void *ret;
    if (FUNC0(buf, l) != 0)
        return NULL;
    if (FUNC1(buf) < *l)
        return NULL;
    ret = buf->start;
    buf->start += *l;
    return ret;
}