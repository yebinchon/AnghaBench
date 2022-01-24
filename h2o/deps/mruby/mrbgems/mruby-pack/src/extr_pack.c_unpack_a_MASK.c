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
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 unsigned int PACK_FLAG_Z ; 
 unsigned int PACK_FLAG_a ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb, const void *src, int slen, mrb_value ary, long count, unsigned int flags)
{
  mrb_value dst;
  const char *cp, *sptr;
  int copylen;

  sptr = (const char *)src;
  if (count != -1 && count < slen)  {
    slen = count;
  }
  copylen = slen;

  if (slen >= 0 && flags & PACK_FLAG_Z) {  /* "Z" */
    if ((cp = (const char *)FUNC1(sptr, '\0', slen)) != NULL) {
      copylen = (int)(cp - sptr);
      if (count == -1) {
        slen = copylen + 1;
      }
    }
  }
  else if (!(flags & PACK_FLAG_a)) {  /* "A" */
    while (copylen > 0 && (sptr[copylen - 1] == '\0' || FUNC0(sptr[copylen - 1]))) {
      copylen--;
    }
  }

  if (copylen < 0) copylen = 0;
  dst = FUNC3(mrb, sptr, (mrb_int)copylen);
  FUNC2(mrb, ary, dst);
  return slen;
}