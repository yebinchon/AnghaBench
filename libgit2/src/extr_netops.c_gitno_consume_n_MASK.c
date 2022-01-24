#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ offset; scalar_t__ len; scalar_t__ data; } ;
typedef  TYPE_1__ gitno_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__) ; 

void FUNC2(gitno_buffer *buf, size_t cons)
{
	FUNC0(buf->data, buf->data + cons, buf->len - buf->offset);
	FUNC1(buf->data + cons, 0x0, buf->len - buf->offset);
	buf->offset -= cons;
}