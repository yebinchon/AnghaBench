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
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC7(const char *input, const char *output,
                   const char *key)
{
  uint8_t keybuf[32], inbuf[16], outbuf[16], tmp[16];
  size_t nkey = sizeof keybuf;
  cf_aes_context ctx;

  nkey = FUNC6(keybuf, 32, key);
  FUNC6(inbuf, 16, input);
  FUNC6(outbuf, 16, output);

  FUNC4(&ctx, keybuf, nkey);
  FUNC2(&ctx, inbuf, tmp);
  FUNC0(FUNC5(tmp, outbuf, 16) == 0);
  
  FUNC1(&ctx, outbuf, tmp);
  FUNC0(FUNC5(tmp, inbuf, 16) == 0);
  FUNC3(&ctx);
}