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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,size_t) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct strbuf *all_msgs, struct strbuf *msg, int *ofs)
{
	char *p, *data;
	size_t len;

	if (*ofs >= all_msgs->len)
		return 0;

	data = &all_msgs->buf[*ofs];
	len = all_msgs->len - *ofs;

	if (len < 5 || !FUNC0(data, "From "))
		return 0;

	p = FUNC2(data, '\n');
	if (p) {
		p++;
		len -= p - data;
		*ofs += p - data;
		data = p;
	}

	p = FUNC3(data, "\nFrom ");
	if (p)
		len = &p[1] - data;

	FUNC1(msg, data, len);
	*ofs += len;
	return 1;
}