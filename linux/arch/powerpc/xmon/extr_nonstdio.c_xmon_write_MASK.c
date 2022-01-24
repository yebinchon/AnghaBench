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

/* Variables and functions */
 scalar_t__ paginate_lpp ; 
 scalar_t__ paginate_pos ; 
 int paginate_skipping ; 
 int paginating ; 
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *ptr, int nb)
{
	int rv = 0;
	const char *p = ptr, *q;
	const char msg[] = "[Hit a key (a:all, q:truncate, any:next page)]";

	if (nb <= 0)
		return rv;

	if (paginating && paginate_skipping)
		return nb;

	if (paginate_lpp) {
		while (paginating && (q = FUNC0(p, '\n'))) {
			rv += FUNC2(p, q - p + 1);
			p = q + 1;
			paginate_pos++;

			if (paginate_pos >= paginate_lpp) {
				FUNC2(msg, FUNC1(msg));

				switch (FUNC3()) {
				case 'a':
					paginating = false;
					break;
				case 'q':
					paginate_skipping = true;
					break;
				default:
					/* nothing */
					break;
				}

				paginate_pos = 0;
				FUNC2("\r\n", 2);

				if (paginate_skipping)
					return nb;
			}
		}
	}

	return rv + FUNC2(p, nb - (p - ptr));
}