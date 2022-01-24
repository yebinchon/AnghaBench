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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,unsigned char) ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,unsigned char) ; 

__attribute__((used)) static char *FUNC4(const char **query, int len,
				 const char *stop_at, struct strbuf *out,
				 int decode_plus)
{
	const char *q = *query;

	while (len) {
		unsigned char c = *q;

		if (!c)
			break;
		if (stop_at && FUNC3(stop_at, c)) {
			q++;
			len--;
			break;
		}

		if (c == '%' && (len < 0 || len >= 3)) {
			int val = FUNC0(q + 1);
			if (0 < val) {
				FUNC1(out, val);
				q += 3;
				len -= 3;
				continue;
			}
		}

		if (decode_plus && c == '+')
			FUNC1(out, ' ');
		else
			FUNC1(out, c);
		q++;
		len--;
	}
	*query = q;
	return FUNC2(out, NULL);
}