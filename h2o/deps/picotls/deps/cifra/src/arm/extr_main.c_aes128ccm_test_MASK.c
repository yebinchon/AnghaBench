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
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void)
{
  uint8_t key[16] = { 0 };
  cf_aes_context ctx;
  FUNC0(&ctx, key, sizeof key);

  uint8_t msg[16] = { 0 };
  uint8_t aad[16] = { 0 };
  uint8_t nonce[11] = { 0 };
  uint8_t cipher[16] = { 0 };
  uint8_t tag[16] = { 0 };

  FUNC1(&cf_aes, &ctx,
                 msg, sizeof msg, 4,
                 aad, sizeof aad,
                 nonce, sizeof nonce,
                 cipher,
                 tag, sizeof tag);
}