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
typedef  unsigned long u64 ;
struct strbuf {unsigned long strbuf_control; } ;
struct pci_pbm_info {unsigned long pbm_regs; int /*<<< orphan*/  name; struct strbuf stc; } ;
typedef  enum schizo_error_type { ____Placeholder_schizo_error_type } schizo_error_type ;

/* Variables and functions */
 unsigned long SCHIZO_STCERR_READ ; 
 unsigned long SCHIZO_STCERR_WRITE ; 
 unsigned long SCHIZO_STCLINE_EPTR ; 
 unsigned long SCHIZO_STCLINE_FOFN ; 
 unsigned long SCHIZO_STCLINE_LADDR ; 
 unsigned long SCHIZO_STCLINE_LINDX ; 
 unsigned long SCHIZO_STCLINE_SPTR ; 
 unsigned long SCHIZO_STCLINE_VALID ; 
 unsigned long SCHIZO_STCTAG_PPN ; 
 unsigned long SCHIZO_STCTAG_READ ; 
 unsigned long SCHIZO_STCTAG_VALID ; 
 unsigned long SCHIZO_STCTAG_VPN ; 
 unsigned long SCHIZO_STC_ERR ; 
 unsigned long SCHIZO_STC_LINE ; 
 unsigned long SCHIZO_STC_TAG ; 
 unsigned long SCHIZO_STRBUF_CTRL_DENAB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,unsigned long,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stc_buf_lock ; 
 unsigned long* stc_error_buf ; 
 unsigned long* stc_line_buf ; 
 unsigned long* stc_tag_buf ; 
 void* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct pci_pbm_info *pbm,
					 enum schizo_error_type type)
{
	struct strbuf *strbuf = &pbm->stc;
	unsigned long regbase = pbm->pbm_regs;
	unsigned long err_base, tag_base, line_base;
	u64 control;
	int i;

	err_base = regbase + SCHIZO_STC_ERR;
	tag_base = regbase + SCHIZO_STC_TAG;
	line_base = regbase + SCHIZO_STC_LINE;

	FUNC1(&stc_buf_lock);

	/* This is __REALLY__ dangerous.  When we put the
	 * streaming buffer into diagnostic mode to probe
	 * it's tags and error status, we _must_ clear all
	 * of the line tag valid bits before re-enabling
	 * the streaming buffer.  If any dirty data lives
	 * in the STC when we do this, we will end up
	 * invalidating it before it has a chance to reach
	 * main memory.
	 */
	control = FUNC3(strbuf->strbuf_control);
	FUNC4((control | SCHIZO_STRBUF_CTRL_DENAB),
		   strbuf->strbuf_control);
	for (i = 0; i < 128; i++) {
		unsigned long val;

		val = FUNC3(err_base + (i * 8UL));
		FUNC4(0UL, err_base + (i * 8UL));
		stc_error_buf[i] = val;
	}
	for (i = 0; i < 16; i++) {
		stc_tag_buf[i] = FUNC3(tag_base + (i * 8UL));
		stc_line_buf[i] = FUNC3(line_base + (i * 8UL));
		FUNC4(0UL, tag_base + (i * 8UL));
		FUNC4(0UL, line_base + (i * 8UL));
	}

	/* OK, state is logged, exit diagnostic mode. */
	FUNC4(control, strbuf->strbuf_control);

	for (i = 0; i < 16; i++) {
		int j, saw_error, first, last;

		saw_error = 0;
		first = i * 8;
		last = first + 8;
		for (j = first; j < last; j++) {
			unsigned long errval = stc_error_buf[j];
			if (errval != 0) {
				saw_error++;
				FUNC0("%s: STC_ERR(%d)[wr(%d)rd(%d)]\n",
				       pbm->name,
				       j,
				       (errval & SCHIZO_STCERR_WRITE) ? 1 : 0,
				       (errval & SCHIZO_STCERR_READ) ? 1 : 0);
			}
		}
		if (saw_error != 0) {
			unsigned long tagval = stc_tag_buf[i];
			unsigned long lineval = stc_line_buf[i];
			FUNC0("%s: STC_TAG(%d)[PA(%016lx)VA(%08lx)V(%d)R(%d)]\n",
			       pbm->name,
			       i,
			       ((tagval & SCHIZO_STCTAG_PPN) >> 19UL),
			       (tagval & SCHIZO_STCTAG_VPN),
			       ((tagval & SCHIZO_STCTAG_VALID) ? 1 : 0),
			       ((tagval & SCHIZO_STCTAG_READ) ? 1 : 0));

			/* XXX Should spit out per-bank error information... -DaveM */
			FUNC0("%s: STC_LINE(%d)[LIDX(%lx)SP(%lx)LADDR(%lx)EP(%lx)"
			       "V(%d)FOFN(%d)]\n",
			       pbm->name,
			       i,
			       ((lineval & SCHIZO_STCLINE_LINDX) >> 23UL),
			       ((lineval & SCHIZO_STCLINE_SPTR) >> 13UL),
			       ((lineval & SCHIZO_STCLINE_LADDR) >> 6UL),
			       ((lineval & SCHIZO_STCLINE_EPTR) >> 0UL),
			       ((lineval & SCHIZO_STCLINE_VALID) ? 1 : 0),
			       ((lineval & SCHIZO_STCLINE_FOFN) ? 1 : 0));
		}
	}

	FUNC2(&stc_buf_lock);
}