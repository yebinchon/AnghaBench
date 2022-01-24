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
typedef  int /*<<< orphan*/  v ;
struct expbuf_t {int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expbuf_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t*,int) ; 

__attribute__((used)) static void FUNC2(struct expbuf_t *buf, size_t v)
{
    FUNC0(buf, sizeof(v));
    FUNC1(buf->end, &v, sizeof(v));
    buf->end += sizeof(v);
}