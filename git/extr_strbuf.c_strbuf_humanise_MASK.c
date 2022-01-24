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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,unsigned int,...) ; 

__attribute__((used)) static void FUNC3(struct strbuf *buf, off_t bytes,
				 int humanise_rate)
{
	if (bytes > 1 << 30) {
		FUNC2(buf,
				humanise_rate == 0 ?
					/* TRANSLATORS: IEC 80000-13:2008 gibibyte */
					FUNC1("%u.%2.2u GiB") :
					/* TRANSLATORS: IEC 80000-13:2008 gibibyte/second */
					FUNC1("%u.%2.2u GiB/s"),
			    (unsigned)(bytes >> 30),
			    (unsigned)(bytes & ((1 << 30) - 1)) / 10737419);
	} else if (bytes > 1 << 20) {
		unsigned x = bytes + 5243;  /* for rounding */
		FUNC2(buf,
				humanise_rate == 0 ?
					/* TRANSLATORS: IEC 80000-13:2008 mebibyte */
					FUNC1("%u.%2.2u MiB") :
					/* TRANSLATORS: IEC 80000-13:2008 mebibyte/second */
					FUNC1("%u.%2.2u MiB/s"),
			    x >> 20, ((x & ((1 << 20) - 1)) * 100) >> 20);
	} else if (bytes > 1 << 10) {
		unsigned x = bytes + 5;  /* for rounding */
		FUNC2(buf,
				humanise_rate == 0 ?
					/* TRANSLATORS: IEC 80000-13:2008 kibibyte */
					FUNC1("%u.%2.2u KiB") :
					/* TRANSLATORS: IEC 80000-13:2008 kibibyte/second */
					FUNC1("%u.%2.2u KiB/s"),
			    x >> 10, ((x & ((1 << 10) - 1)) * 100) >> 10);
	} else {
		FUNC2(buf,
				humanise_rate == 0 ?
					/* TRANSLATORS: IEC 80000-13:2008 byte */
					FUNC0("%u byte", "%u bytes", (unsigned)bytes) :
					/* TRANSLATORS: IEC 80000-13:2008 byte/second */
					FUNC0("%u byte/s", "%u bytes/s", (unsigned)bytes),
				(unsigned)bytes);
	}
}