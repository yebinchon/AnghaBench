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
struct fw_header {void* flags; void* firmware_len; void* hw_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEADER_FLAGS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firmware_len ; 
 int /*<<< orphan*/  hw_id ; 
 int /*<<< orphan*/  FUNC1 (struct fw_header*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(uint8_t *buf)
{
	struct fw_header *hdr = (struct fw_header *) buf;

	FUNC1(hdr, 0, sizeof (struct fw_header));
	hdr->hw_id = FUNC0(hw_id);
	hdr->firmware_len = FUNC0(firmware_len);
	hdr->flags = FUNC0(HEADER_FLAGS);
}