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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tpm_buf {int /*<<< orphan*/  data_page; int /*<<< orphan*/  data; scalar_t__ flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct tpm_buf *buf, u16 tag, u32 ordinal)
{
	buf->data_page = FUNC0(GFP_HIGHUSER);
	if (!buf->data_page)
		return -ENOMEM;

	buf->flags = 0;
	buf->data = FUNC1(buf->data_page);
	FUNC2(buf, tag, ordinal);
	return 0;
}