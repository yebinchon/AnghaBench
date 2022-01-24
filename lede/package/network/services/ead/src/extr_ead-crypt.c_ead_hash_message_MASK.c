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
typedef  int /*<<< orphan*/  uint32_t ;
struct ead_msg_encrypted {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ead_msg_encrypted *enc, uint32_t *hash, int len)
{
	unsigned char *data = (unsigned char *) enc;

	/* hash the packet with the stored hash part initialized to zero */
	FUNC1(hash);
	FUNC0(enc->hash, 0, sizeof(enc->hash));
	while (len > 0) {
		FUNC2(hash, data, W);
		len -= 64;
		data += 64;
	}
}