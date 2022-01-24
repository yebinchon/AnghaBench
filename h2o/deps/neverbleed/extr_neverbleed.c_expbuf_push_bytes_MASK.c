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
struct expbuf_t {size_t end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expbuf_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct expbuf_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,void const*,size_t) ; 

__attribute__((used)) static void FUNC3(struct expbuf_t *buf, const void *p, size_t l)
{
    FUNC0(buf, l);
    FUNC1(buf, l);
    FUNC2(buf->end, p, l);
    buf->end += l;
}