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
struct aesecb_context_t {int dummy; } ;
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aesecb_context_t*,int) ; 

__attribute__((used)) static inline void FUNC1(ptls_cipher_context_t *_ctx)
{
    struct aesecb_context_t *ctx = (struct aesecb_context_t *)_ctx;
    FUNC0(ctx, sizeof(*ctx));
}