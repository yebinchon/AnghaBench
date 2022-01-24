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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct tpm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tpm_buf *buf, u32 session_handle,
				 const u8 *nonce, u16 nonce_len,
				 u8 attributes,
				 const u8 *hmac, u16 hmac_len)
{
	FUNC2(buf, 9 + nonce_len + hmac_len);
	FUNC2(buf, session_handle);
	FUNC1(buf, nonce_len);

	if (nonce && nonce_len)
		FUNC0(buf, nonce, nonce_len);

	FUNC3(buf, attributes);
	FUNC1(buf, hmac_len);

	if (hmac && hmac_len)
		FUNC0(buf, hmac, hmac_len);
}