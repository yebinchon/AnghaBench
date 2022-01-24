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
typedef  int /*<<< orphan*/  u8 ;
struct blob_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 char* MACSTR ; 
 int /*<<< orphan*/  FUNC1 (struct blob_buf*) ; 
 char* FUNC2 (struct blob_buf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct blob_buf *buf, const char *name, const u8 *addr)
{
	char *s;

	s = FUNC2(buf, name, 20);
	FUNC3(s, MACSTR, FUNC0(addr));
	FUNC1(buf);
}