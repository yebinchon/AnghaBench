#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct emit_callback {char const** label_path; int ws_rule; void* ctxlen; int /*<<< orphan*/  flags; int /*<<< orphan*/  interhunkctxlen; int /*<<< orphan*/  anchors_nr; int /*<<< orphan*/  anchors; struct strbuf* header; struct diff_options* opt; int /*<<< orphan*/  color_diff; } ;
typedef  struct emit_callback xpparam_t ;
typedef  int /*<<< orphan*/  xpp ;
typedef  int /*<<< orphan*/  xecfg ;
typedef  struct emit_callback xdemitconf_t ;
struct userdiff_funcname {int /*<<< orphan*/  cflags; int /*<<< orphan*/  pattern; } ;
struct userdiff_driver {int dummy; } ;
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct TYPE_14__ {scalar_t__ funccontext; scalar_t__ suppress_diff_headers; scalar_t__ binary; int /*<<< orphan*/  text; scalar_t__ allow_textconv; scalar_t__ reverse_diff; } ;
struct diff_options {char* b_prefix; char* a_prefix; scalar_t__ submodule_format; int found_changes; scalar_t__ word_diff; TYPE_1__ flags; int /*<<< orphan*/  interhunkcontext; void* context; int /*<<< orphan*/  anchors_nr; int /*<<< orphan*/  anchors; int /*<<< orphan*/  xdl_opts; TYPE_5__* repo; int /*<<< orphan*/  use_color; scalar_t__ irreversible_delete; } ;
struct diff_filespec {int mode; scalar_t__ path; int /*<<< orphan*/  oid; int /*<<< orphan*/  data; int /*<<< orphan*/  dirty_submodule; } ;
struct TYPE_15__ {scalar_t__ size; char* ptr; } ;
typedef  TYPE_2__ mmfile_t ;
typedef  int /*<<< orphan*/  ecbdata ;
struct TYPE_16__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diff_filespec*) ; 
 int /*<<< orphan*/  DIFF_METAINFO ; 
 int /*<<< orphan*/  DIFF_RESET ; 
 scalar_t__ DIFF_SUBMODULE_INLINE_DIFF ; 
 scalar_t__ DIFF_SUBMODULE_LOG ; 
 int /*<<< orphan*/  DIFF_SYMBOL_BINARY_FILES ; 
 int /*<<< orphan*/  DIFF_SYMBOL_HEADER ; 
 struct strbuf STRBUF_INIT ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int WS_BLANK_AT_EOF ; 
 int /*<<< orphan*/  XDL_EMIT_FUNCCONTEXT ; 
 int /*<<< orphan*/  XDL_EMIT_FUNCNAMES ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,struct emit_callback*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (TYPE_5__*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC6 (struct diff_filespec*) ; 
 struct userdiff_funcname* FUNC7 (struct diff_options*,struct diff_filespec*) ; 
 char* FUNC8 (struct diff_options*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC10 (struct diff_options*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct diff_options*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,struct diff_filespec*,struct diff_filespec*,struct userdiff_driver*,struct userdiff_driver*,struct diff_options*) ; 
 scalar_t__ FUNC14 (TYPE_5__*,TYPE_2__*,struct diff_filespec*) ; 
 void* FUNC15 (TYPE_5__*,struct userdiff_driver*,struct diff_filespec*,char**) ; 
 int /*<<< orphan*/  fn_out_consume ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct emit_callback*) ; 
 struct userdiff_driver* FUNC18 (TYPE_5__*,struct diff_filespec*) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct emit_callback*,struct diff_options*,struct diff_filespec*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct emit_callback*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC24 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (struct diff_options*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct diff_options*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC28 (struct strbuf*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC29 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC30 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC31 (struct strbuf*) ; 
 void* FUNC32 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC35 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct emit_callback*,struct emit_callback*,struct emit_callback*) ; 
 int /*<<< orphan*/  FUNC36 (struct emit_callback*) ; 
 int /*<<< orphan*/  FUNC37 (struct emit_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC38(const char *name_a,
			 const char *name_b,
			 struct diff_filespec *one,
			 struct diff_filespec *two,
			 const char *xfrm_msg,
			 int must_show_header,
			 struct diff_options *o,
			 int complete_rewrite)
{
	mmfile_t mf1, mf2;
	const char *lbl[2];
	char *a_one, *b_two;
	const char *meta = FUNC8(o, DIFF_METAINFO);
	const char *reset = FUNC8(o, DIFF_RESET);
	const char *a_prefix, *b_prefix;
	struct userdiff_driver *textconv_one = NULL;
	struct userdiff_driver *textconv_two = NULL;
	struct strbuf header = STRBUF_INIT;
	const char *line_prefix = FUNC9(o);

	FUNC10(o, "a/", "b/");
	if (o->flags.reverse_diff) {
		a_prefix = o->b_prefix;
		b_prefix = o->a_prefix;
	} else {
		a_prefix = o->a_prefix;
		b_prefix = o->b_prefix;
	}

	if (o->submodule_format == DIFF_SUBMODULE_LOG &&
	    (!one->mode || FUNC1(one->mode)) &&
	    (!two->mode || FUNC1(two->mode))) {
		FUNC26(o, one->path ? one->path : two->path,
				&one->oid, &two->oid,
				two->dirty_submodule);
		return;
	} else if (o->submodule_format == DIFF_SUBMODULE_INLINE_DIFF &&
		   (!one->mode || FUNC1(one->mode)) &&
		   (!two->mode || FUNC1(two->mode))) {
		FUNC25(o, one->path ? one->path : two->path,
				&one->oid, &two->oid,
				two->dirty_submodule);
		return;
	}

	if (o->flags.allow_textconv) {
		textconv_one = FUNC18(o->repo, one);
		textconv_two = FUNC18(o->repo, two);
	}

	/* Never use a non-valid filename anywhere if at all possible */
	name_a = FUNC0(one) ? name_a : name_b;
	name_b = FUNC0(two) ? name_b : name_a;

	a_one = FUNC24(a_prefix, name_a + (*name_a == '/'));
	b_two = FUNC24(b_prefix, name_b + (*name_b == '/'));
	lbl[0] = FUNC0(one) ? a_one : "/dev/null";
	lbl[1] = FUNC0(two) ? b_two : "/dev/null";
	FUNC28(&header, "%s%sdiff --git %s %s%s\n", line_prefix, meta, a_one, b_two, reset);
	if (lbl[0][0] == '/') {
		/* /dev/null */
		FUNC28(&header, "%s%snew file mode %06o%s\n", line_prefix, meta, two->mode, reset);
		if (xfrm_msg)
			FUNC29(&header, xfrm_msg);
		must_show_header = 1;
	}
	else if (lbl[1][0] == '/') {
		FUNC28(&header, "%s%sdeleted file mode %06o%s\n", line_prefix, meta, one->mode, reset);
		if (xfrm_msg)
			FUNC29(&header, xfrm_msg);
		must_show_header = 1;
	}
	else {
		if (one->mode != two->mode) {
			FUNC28(&header, "%s%sold mode %06o%s\n", line_prefix, meta, one->mode, reset);
			FUNC28(&header, "%s%snew mode %06o%s\n", line_prefix, meta, two->mode, reset);
			must_show_header = 1;
		}
		if (xfrm_msg)
			FUNC29(&header, xfrm_msg);

		/*
		 * we do not run diff between different kind
		 * of objects.
		 */
		if ((one->mode ^ two->mode) & S_IFMT)
			goto free_ab_and_return;
		if (complete_rewrite &&
		    (textconv_one || !FUNC5(o->repo, one)) &&
		    (textconv_two || !FUNC5(o->repo, two))) {
			FUNC12(o, DIFF_SYMBOL_HEADER,
					 header.buf, header.len, 0);
			FUNC31(&header);
			FUNC13(name_a, name_b, one, two,
					  textconv_one, textconv_two, o);
			o->found_changes = 1;
			goto free_ab_and_return;
		}
	}

	if (o->irreversible_delete && lbl[1][0] == '/') {
		FUNC12(o, DIFF_SYMBOL_HEADER, header.buf,
				 header.len, 0);
		FUNC31(&header);
		goto free_ab_and_return;
	} else if (!o->flags.text &&
		   ( (!textconv_one && FUNC5(o->repo, one)) ||
		     (!textconv_two && FUNC5(o->repo, two)) )) {
		struct strbuf sb = STRBUF_INIT;
		if (!one->data && !two->data &&
		    FUNC2(one->mode) && FUNC2(two->mode) &&
		    !o->flags.binary) {
			if (FUNC23(&one->oid, &two->oid)) {
				if (must_show_header)
					FUNC12(o, DIFF_SYMBOL_HEADER,
							 header.buf, header.len,
							 0);
				goto free_ab_and_return;
			}
			FUNC12(o, DIFF_SYMBOL_HEADER,
					 header.buf, header.len, 0);
			FUNC28(&sb, "%sBinary files %s and %s differ\n",
				    FUNC9(o), lbl[0], lbl[1]);
			FUNC12(o, DIFF_SYMBOL_BINARY_FILES,
					 sb.buf, sb.len, 0);
			FUNC30(&sb);
			goto free_ab_and_return;
		}
		if (FUNC14(o->repo, &mf1, one) < 0 ||
		    FUNC14(o->repo, &mf2, two) < 0)
			FUNC4("unable to read files to diff");
		/* Quite common confusing case */
		if (mf1.size == mf2.size &&
		    !FUNC21(mf1.ptr, mf2.ptr, mf1.size)) {
			if (must_show_header)
				FUNC12(o, DIFF_SYMBOL_HEADER,
						 header.buf, header.len, 0);
			goto free_ab_and_return;
		}
		FUNC12(o, DIFF_SYMBOL_HEADER, header.buf, header.len, 0);
		FUNC31(&header);
		if (o->flags.binary)
			FUNC11(o, &mf1, &mf2);
		else {
			FUNC28(&sb, "%sBinary files %s and %s differ\n",
				    FUNC9(o), lbl[0], lbl[1]);
			FUNC12(o, DIFF_SYMBOL_BINARY_FILES,
					 sb.buf, sb.len, 0);
			FUNC30(&sb);
		}
		o->found_changes = 1;
	} else {
		/* Crazy xdl interfaces.. */
		const char *diffopts;
		const char *v;
		xpparam_t xpp;
		xdemitconf_t xecfg;
		struct emit_callback ecbdata;
		const struct userdiff_funcname *pe;

		if (must_show_header) {
			FUNC12(o, DIFF_SYMBOL_HEADER,
					 header.buf, header.len, 0);
			FUNC31(&header);
		}

		mf1.size = FUNC15(o->repo, textconv_one, one, &mf1.ptr);
		mf2.size = FUNC15(o->repo, textconv_two, two, &mf2.ptr);

		pe = FUNC7(o, one);
		if (!pe)
			pe = FUNC7(o, two);

		FUNC22(&xpp, 0, sizeof(xpp));
		FUNC22(&xecfg, 0, sizeof(xecfg));
		FUNC22(&ecbdata, 0, sizeof(ecbdata));
		if (o->flags.suppress_diff_headers)
			lbl[0] = NULL;
		ecbdata.label_path = lbl;
		ecbdata.color_diff = FUNC33(o->use_color);
		ecbdata.ws_rule = FUNC34(o->repo->index, name_b);
		if (ecbdata.ws_rule & WS_BLANK_AT_EOF)
			FUNC3(&mf1, &mf2, &ecbdata);
		ecbdata.opt = o;
		if (header.len && !o->flags.suppress_diff_headers)
			ecbdata.header = &header;
		xpp.flags = o->xdl_opts;
		xpp.anchors = o->anchors;
		xpp.anchors_nr = o->anchors_nr;
		xecfg.ctxlen = o->context;
		xecfg.interhunkctxlen = o->interhunkcontext;
		xecfg.flags = XDL_EMIT_FUNCNAMES;
		if (o->flags.funccontext)
			xecfg.flags |= XDL_EMIT_FUNCCONTEXT;
		if (pe)
			FUNC37(&xecfg, pe->pattern, pe->cflags);

		diffopts = FUNC19("GIT_DIFF_OPTS");
		if (!diffopts)
			;
		else if (FUNC27(diffopts, "--unified=", &v))
			xecfg.ctxlen = FUNC32(v, NULL, 10);
		else if (FUNC27(diffopts, "-u", &v))
			xecfg.ctxlen = FUNC32(v, NULL, 10);

		if (o->word_diff)
			FUNC20(&ecbdata, o, one, two);
		if (FUNC35(&mf1, &mf2, NULL, fn_out_consume,
				  &ecbdata, &xpp, &xecfg))
			FUNC4("unable to generate diff for %s", one->path);
		if (o->word_diff)
			FUNC17(&ecbdata);
		if (textconv_one)
			FUNC16(mf1.ptr);
		if (textconv_two)
			FUNC16(mf2.ptr);
		FUNC36(&xecfg);
	}

 free_ab_and_return:
	FUNC30(&header);
	FUNC6(one);
	FUNC6(two);
	FUNC16(a_one);
	FUNC16(b_two);
	return;
}