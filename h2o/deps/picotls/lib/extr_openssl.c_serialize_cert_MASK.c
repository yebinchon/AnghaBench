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
struct TYPE_3__ {unsigned char* base; int len; } ;
typedef  TYPE_1__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 unsigned char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(X509 *cert, ptls_iovec_t *dst)
{
    int len = FUNC1(cert, NULL);
    FUNC0(len > 0);

    if ((dst->base = FUNC2(len)) == NULL)
        return PTLS_ERROR_NO_MEMORY;
    unsigned char *p = dst->base;
    dst->len = FUNC1(cert, &p);
    FUNC0(len == dst->len);

    return 0;
}