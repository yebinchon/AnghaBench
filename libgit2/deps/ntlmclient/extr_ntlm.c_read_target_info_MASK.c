#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ntlm_client ;
struct TYPE_5__ {int len; int pos; } ;
typedef  TYPE_1__ ntlm_buf ;

/* Variables and functions */
#define  NTLM_TARGET_INFO_DOMAIN 132 
#define  NTLM_TARGET_INFO_DOMAIN_DNS 131 
#define  NTLM_TARGET_INFO_END 130 
#define  NTLM_TARGET_INFO_SERVER 129 
#define  NTLM_TARGET_INFO_SERVER_DNS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 

__attribute__((used)) static inline bool FUNC3(
	char **server_out,
	char **domain_out,
	char **server_dns_out,
	char **domain_dns_out,
	ntlm_client *ntlm,
	ntlm_buf *message,
	bool unicode)
{
	uint16_t block_type, block_len;
	bool done = false;

	*server_out = NULL;
	*domain_out = NULL;
	*server_dns_out = NULL;
	*domain_dns_out = NULL;

	while (!done && (message->len - message->pos) >= 4) {
		if (!FUNC1(&block_type, ntlm, message) ||
			!FUNC1(&block_len, ntlm, message)) {
			FUNC0(ntlm, "truncated target info block");
			return false;
		}

		if (!block_type && block_len) {
			FUNC0(ntlm, "invalid target info block");
			return -1;
		}

		switch (block_type) {
		case NTLM_TARGET_INFO_DOMAIN:
			if (!FUNC2(domain_out, ntlm, message, block_len, unicode))
				return -1;
			break;
		case NTLM_TARGET_INFO_SERVER:
			if (!FUNC2(server_out, ntlm, message, block_len, unicode))
				return -1;
			break;
		case NTLM_TARGET_INFO_DOMAIN_DNS:
			if (!FUNC2(domain_dns_out, ntlm, message, block_len, unicode))
				return -1;
			break;
		case NTLM_TARGET_INFO_SERVER_DNS:
			if (!FUNC2(server_dns_out, ntlm, message, block_len, unicode))
				return -1;
			break;
		case NTLM_TARGET_INFO_END:
			done = true;
			break;
		default:
			FUNC0(ntlm, "unknown target info block type");
			return -1;
		}
	}

	if (message->len != message->pos) {
		FUNC0(ntlm,
			"invalid extra data in target info section");
		return false;
	}

	return true;
}