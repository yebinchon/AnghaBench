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
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
typedef  int /*<<< orphan*/  ptls_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(ptls_t * tls, ptls_buffer_t * sendbuf, ptls_handshake_properties_t * ph_prop)
{
    size_t inlen = 0, roff = 0;

    FUNC0(sendbuf, "", 0);
    int ret = FUNC1(tls, sendbuf, NULL, NULL, ph_prop);

    return ret;
}