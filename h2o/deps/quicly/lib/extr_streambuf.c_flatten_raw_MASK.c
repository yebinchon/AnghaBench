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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ cbdata; } ;
typedef  TYPE_1__ quicly_sendbuf_vec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC1(quicly_sendbuf_vec_t *vec, void *dst, size_t off, size_t len)
{
    FUNC0(dst, (uint8_t *)vec->cbdata + off, len);
    return 0;
}