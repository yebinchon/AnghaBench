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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  cf_hmac_ctx ;
typedef  int /*<<< orphan*/  cf_chash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void FUNC4(const uint8_t *key, size_t nkey,
             const uint8_t *msg, size_t nmsg,
             uint8_t *out,
             const cf_chash *hash)
{
  cf_hmac_ctx ctx;
  
  FUNC0(out);
  FUNC0(hash);

  FUNC2(&ctx, hash, key, nkey);
  FUNC3(&ctx, msg, nmsg);
  FUNC1(&ctx, out);
}