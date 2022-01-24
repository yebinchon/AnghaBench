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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned char) ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value b)
{
  mrb_value h;
  int i, len;
  char *bp, buf[3];

  bp = FUNC1(b);
  len = FUNC0(b);
  h = FUNC3(mrb, len * 2);
  for (i = 0; i < len; i++) {
    FUNC4(buf, sizeof(buf), "%02x", (unsigned char )bp[i]);
    FUNC2(mrb, h, buf, 2);
  }
  return h;
}