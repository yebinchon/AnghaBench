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
struct emit_callback {int /*<<< orphan*/  opt; int /*<<< orphan*/  lno_in_postimage; int /*<<< orphan*/  lno_in_preimage; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SYMBOL_NO_LF_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct emit_callback*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emit_callback*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char,int) ; 

__attribute__((used)) static void FUNC4(struct emit_callback *ecb,
			       int prefix, const char *data, int size)
{
	const char *endp = NULL;

	while (0 < size) {
		int len;

		endp = FUNC3(data, '\n', size);
		len = endp ? (endp - data + 1) : size;
		if (prefix != '+') {
			ecb->lno_in_preimage++;
			FUNC1(ecb, data, len);
		} else {
			ecb->lno_in_postimage++;
			FUNC0(ecb, data, len);
		}
		size -= len;
		data += len;
	}
	if (!endp)
		FUNC2(ecb->opt, DIFF_SYMBOL_NO_LF_EOF, NULL, 0, 0);
}