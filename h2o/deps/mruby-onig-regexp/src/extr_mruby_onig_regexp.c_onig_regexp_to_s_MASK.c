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
typedef  int /*<<< orphan*/  OnigUChar ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ONIG_ENCODING_UTF8 ; 
 int /*<<< orphan*/  ONIG_OPTION_DEFAULT ; 
 int ONIG_OPTION_EXTEND ; 
 int ONIG_OPTION_IGNORECASE ; 
 int ONIG_OPTION_MULTILINE ; 
 int /*<<< orphan*/  OnigDefaultSyntax ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,long) ; 
 scalar_t__ FUNC12 (char const*,char) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value self) {
  int options;
  const int embeddable = ONIG_OPTION_MULTILINE|ONIG_OPTION_IGNORECASE|ONIG_OPTION_EXTEND;
  long len;
  const char* ptr;
  mrb_value str = FUNC6(mrb, "(?");
  char optbuf[5];

  OnigRegex reg;
  FUNC0(mrb, self, &mrb_onig_regexp_type, reg);
  options = FUNC8(reg);
  mrb_value src = FUNC4(mrb, self, FUNC3(mrb, "@source"));
  ptr = FUNC2(src);
  len = FUNC1(src);

 again:
  if (len >= 4 && ptr[0] == '(' && ptr[1] == '?') {
    int err = 1;
    ptr += 2;
    if ((len -= 2) > 0) {
      do {
        if(FUNC12(ptr, 'i')) { options |= ONIG_OPTION_IGNORECASE; }
        if(FUNC12(ptr, 'x')) { options |= ONIG_OPTION_EXTEND; }
        if(FUNC12(ptr, 'm')) { options |= ONIG_OPTION_MULTILINE; }
        ++ptr;
      } while (--len > 0);
    }
    if (len > 1 && *ptr == '-') {
      ++ptr;
      --len;
      do {
        if(FUNC12(ptr, 'i')) { options &= ~ONIG_OPTION_IGNORECASE; }
        if(FUNC12(ptr, 'x')) { options &= ~ONIG_OPTION_EXTEND; }
        if(FUNC12(ptr, 'm')) { options &= ~ONIG_OPTION_MULTILINE; }
        ++ptr;
      } while (--len > 0);
    }
    if (*ptr == ')') {
      --len;
      ++ptr;
      goto again;
    }
    if (*ptr == ':' && ptr[len-1] == ')') {
      OnigRegex rp;
      ++ptr;
      len -= 2;
      err = FUNC9(&rp, (OnigUChar*)ptr, (OnigUChar*)ptr + len, ONIG_OPTION_DEFAULT,
                     ONIG_ENCODING_UTF8, OnigDefaultSyntax, NULL);
      FUNC7(rp);
    }
    if (err) {
      options = FUNC8(reg);
      ptr = FUNC2(src);
      len = FUNC1(src);
    }
  }

  if (*FUNC10(optbuf, options)) FUNC5(mrb, str, optbuf);

  if ((options & embeddable) != embeddable) {
    optbuf[0] = '-';
    FUNC10(optbuf + 1, ~options);
    FUNC5(mrb, str, optbuf);
  }

  FUNC5(mrb, str, ":");
  FUNC11(mrb, str, ptr, len);
  FUNC5(mrb, str, ")");
  return str;
}