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
struct strbuf {char* buf; } ;
struct json_writer {struct strbuf json; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 

__attribute__((used)) static void FUNC2(struct json_writer *jw, int precision,
			      double value)
{
	if (precision < 0) {
		FUNC0(&jw->json, "%f", value);
	} else {
		struct strbuf fmt = STRBUF_INIT;
		FUNC0(&fmt, "%%.%df", precision);
		FUNC0(&jw->json, fmt.buf, value);
		FUNC1(&fmt);
	}
}