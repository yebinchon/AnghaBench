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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cf_hmac_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cf_sha256 ; 
 int /*<<< orphan*/  mac_message ; 
 int /*<<< orphan*/  mac_message_len ; 

__attribute__((used)) static void FUNC3(void)
{
  uint8_t key[32] = { 0 },
          mac[32] = { 0 };

  cf_hmac_ctx ctx;
  FUNC1(&ctx, &cf_sha256, key, sizeof key);
  FUNC2(&ctx, mac_message, mac_message_len);
  FUNC0(&ctx, mac);
}