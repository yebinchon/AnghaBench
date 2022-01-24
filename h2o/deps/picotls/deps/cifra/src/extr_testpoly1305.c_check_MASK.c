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
typedef  int /*<<< orphan*/  cf_poly1305 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC6(const char *rstr, const char *sstr,
                  const char *msgstr, const char *tagstr)
{
  uint8_t r[16], s[16], tag[16];
  uint8_t msg[132], out[16];

  FUNC5(r, sizeof r, rstr);
  FUNC5(s, sizeof s, sstr);
  size_t nmsg = FUNC5(msg, sizeof msg, msgstr);
  FUNC5(tag, sizeof tag, tagstr);

  cf_poly1305 ctx;
  FUNC2(&ctx, r, s);
  FUNC3(&ctx, msg, nmsg);
  FUNC1(&ctx, out);

  FUNC0(FUNC4(out, tag, 16) == 0);
}