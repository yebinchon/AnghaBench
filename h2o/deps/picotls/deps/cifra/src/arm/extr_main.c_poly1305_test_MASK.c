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
typedef  int /*<<< orphan*/  cf_poly1305 ;
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_message ; 
 int /*<<< orphan*/  mac_message_len ; 

__attribute__((used)) static void FUNC5(void)
{
  uint8_t key[32] = { 0 },
          nonce[16] = { 0 },
          encnonce[16],
          mac[16];

  cf_aes_context aes;
  FUNC1(&aes, key, 16);
  FUNC0(&aes, nonce, encnonce);

  cf_poly1305 poly;
  FUNC3(&poly, key + 16, encnonce);
  FUNC4(&poly, mac_message, mac_message_len);
  FUNC2(&poly, mac);
}