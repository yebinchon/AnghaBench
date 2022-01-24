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
struct strbuf {char* buf; int len; } ;
struct grep_pat {char* pattern; size_t patternlen; int is_fixed; int /*<<< orphan*/  regexp; scalar_t__ ignore_case; scalar_t__ fixed; int /*<<< orphan*/  word_regexp; } ;
struct grep_opt {int pcre2; scalar_t__ extended_regexp_option; scalar_t__ pcre1; scalar_t__ fixed; scalar_t__ ignore_case; int /*<<< orphan*/  word_regexp; } ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NEWLINE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_pat*,struct grep_opt*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_pat*,struct grep_opt*) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_pat*,struct grep_opt*) ; 
 int /*<<< orphan*/  FUNC4 (struct grep_pat*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,size_t) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(struct grep_pat *p, struct grep_opt *opt)
{
	int err;
	int regflags = REG_NEWLINE;

	p->word_regexp = opt->word_regexp;
	p->ignore_case = opt->ignore_case;
	p->fixed = opt->fixed;

	if (FUNC7(p->pattern, 0, p->patternlen) && !opt->pcre2)
		FUNC5(FUNC0("given pattern contains NULL byte (via -f <file>). This is only supported with -P under PCRE v2"));

	p->is_fixed = FUNC6(p->pattern, p->patternlen);
#ifdef USE_LIBPCRE2
       if (!p->fixed && !p->is_fixed) {
	       const char *no_jit = "(*NO_JIT)";
	       const int no_jit_len = strlen(no_jit);
	       if (starts_with(p->pattern, no_jit) &&
		   is_fixed(p->pattern + no_jit_len,
			    p->patternlen - no_jit_len))
		       p->is_fixed = 1;
       }
#endif
	if (p->fixed || p->is_fixed) {
#ifdef USE_LIBPCRE2
		opt->pcre2 = 1;
		if (p->is_fixed) {
			compile_pcre2_pattern(p, opt);
		} else {
			/*
			 * E.g. t7811-grep-open.sh relies on the
			 * pattern being restored.
			 */
			char *old_pattern = p->pattern;
			size_t old_patternlen = p->patternlen;
			struct strbuf sb = STRBUF_INIT;

			/*
			 * There is the PCRE2_LITERAL flag, but it's
			 * only in PCRE v2 10.30 and later. Needing to
			 * ifdef our way around that and dealing with
			 * it + PCRE2_MULTILINE being an error is more
			 * complex than just quoting this ourselves.
			*/
			strbuf_add(&sb, "\\Q", 2);
			strbuf_add(&sb, p->pattern, p->patternlen);
			strbuf_add(&sb, "\\E", 2);

			p->pattern = sb.buf;
			p->patternlen = sb.len;
			compile_pcre2_pattern(p, opt);
			p->pattern = old_pattern;
			p->patternlen = old_patternlen;
			strbuf_release(&sb);
		}
#else /* !USE_LIBPCRE2 */
		FUNC1(p, opt);
#endif /* !USE_LIBPCRE2 */
		return;
	}

	if (opt->pcre2) {
		FUNC3(p, opt);
		return;
	}

	if (opt->pcre1) {
		FUNC2(p, opt);
		return;
	}

	if (p->ignore_case)
		regflags |= REG_ICASE;
	if (opt->extended_regexp_option)
		regflags |= REG_EXTENDED;
	err = FUNC8(&p->regexp, p->pattern, regflags);
	if (err) {
		char errbuf[1024];
		FUNC9(err, &p->regexp, errbuf, 1024);
		FUNC4(p, errbuf);
	}
}