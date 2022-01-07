
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct emit_callback {char const** label_path; int ws_rule; void* ctxlen; int flags; int interhunkctxlen; int anchors_nr; int anchors; struct strbuf* header; struct diff_options* opt; int color_diff; } ;
typedef struct emit_callback xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef struct emit_callback xdemitconf_t ;
struct userdiff_funcname {int cflags; int pattern; } ;
struct userdiff_driver {int dummy; } ;
struct strbuf {scalar_t__ len; int buf; } ;
struct TYPE_14__ {scalar_t__ funccontext; scalar_t__ suppress_diff_headers; scalar_t__ binary; int text; scalar_t__ allow_textconv; scalar_t__ reverse_diff; } ;
struct diff_options {char* b_prefix; char* a_prefix; scalar_t__ submodule_format; int found_changes; scalar_t__ word_diff; TYPE_1__ flags; int interhunkcontext; void* context; int anchors_nr; int anchors; int xdl_opts; TYPE_5__* repo; int use_color; scalar_t__ irreversible_delete; } ;
struct diff_filespec {int mode; scalar_t__ path; int oid; int data; int dirty_submodule; } ;
struct TYPE_15__ {scalar_t__ size; char* ptr; } ;
typedef TYPE_2__ mmfile_t ;
typedef int ecbdata ;
struct TYPE_16__ {int index; } ;


 scalar_t__ DIFF_FILE_VALID (struct diff_filespec*) ;
 int DIFF_METAINFO ;
 int DIFF_RESET ;
 scalar_t__ DIFF_SUBMODULE_INLINE_DIFF ;
 scalar_t__ DIFF_SUBMODULE_LOG ;
 int DIFF_SYMBOL_BINARY_FILES ;
 int DIFF_SYMBOL_HEADER ;
 struct strbuf STRBUF_INIT ;
 int S_IFMT ;
 scalar_t__ S_ISGITLINK (int) ;
 scalar_t__ S_ISREG (int) ;
 int WS_BLANK_AT_EOF ;
 int XDL_EMIT_FUNCCONTEXT ;
 int XDL_EMIT_FUNCNAMES ;
 int check_blank_at_eof (TYPE_2__*,TYPE_2__*,struct emit_callback*) ;
 int die (char*,...) ;
 scalar_t__ diff_filespec_is_binary (TYPE_5__*,struct diff_filespec*) ;
 int diff_free_filespec_data (struct diff_filespec*) ;
 struct userdiff_funcname* diff_funcname_pattern (struct diff_options*,struct diff_filespec*) ;
 char* diff_get_color_opt (struct diff_options*,int ) ;
 char* diff_line_prefix (struct diff_options*) ;
 int diff_set_mnemonic_prefix (struct diff_options*,char*,char*) ;
 int emit_binary_diff (struct diff_options*,TYPE_2__*,TYPE_2__*) ;
 int emit_diff_symbol (struct diff_options*,int ,int ,scalar_t__,int ) ;
 int emit_rewrite_diff (char const*,char const*,struct diff_filespec*,struct diff_filespec*,struct userdiff_driver*,struct userdiff_driver*,struct diff_options*) ;
 scalar_t__ fill_mmfile (TYPE_5__*,TYPE_2__*,struct diff_filespec*) ;
 void* fill_textconv (TYPE_5__*,struct userdiff_driver*,struct diff_filespec*,char**) ;
 int fn_out_consume ;
 int free (char*) ;
 int free_diff_words_data (struct emit_callback*) ;
 struct userdiff_driver* get_textconv (TYPE_5__*,struct diff_filespec*) ;
 char* getenv (char*) ;
 int init_diff_words_data (struct emit_callback*,struct diff_options*,struct diff_filespec*,struct diff_filespec*) ;
 int memcmp (char*,char*,scalar_t__) ;
 int memset (struct emit_callback*,int ,int) ;
 scalar_t__ oideq (int *,int *) ;
 char* quote_two (char const*,char const*) ;
 int show_submodule_inline_diff (struct diff_options*,scalar_t__,int *,int *,int ) ;
 int show_submodule_summary (struct diff_options*,scalar_t__,int *,int *,int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 void* strtoul (char const*,int *,int) ;
 int want_color (int ) ;
 int whitespace_rule (int ,char const*) ;
 scalar_t__ xdi_diff_outf (TYPE_2__*,TYPE_2__*,int *,int ,struct emit_callback*,struct emit_callback*,struct emit_callback*) ;
 int xdiff_clear_find_func (struct emit_callback*) ;
 int xdiff_set_find_func (struct emit_callback*,int ,int ) ;

__attribute__((used)) static void builtin_diff(const char *name_a,
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
 const char *meta = diff_get_color_opt(o, DIFF_METAINFO);
 const char *reset = diff_get_color_opt(o, DIFF_RESET);
 const char *a_prefix, *b_prefix;
 struct userdiff_driver *textconv_one = ((void*)0);
 struct userdiff_driver *textconv_two = ((void*)0);
 struct strbuf header = STRBUF_INIT;
 const char *line_prefix = diff_line_prefix(o);

 diff_set_mnemonic_prefix(o, "a/", "b/");
 if (o->flags.reverse_diff) {
  a_prefix = o->b_prefix;
  b_prefix = o->a_prefix;
 } else {
  a_prefix = o->a_prefix;
  b_prefix = o->b_prefix;
 }

 if (o->submodule_format == DIFF_SUBMODULE_LOG &&
     (!one->mode || S_ISGITLINK(one->mode)) &&
     (!two->mode || S_ISGITLINK(two->mode))) {
  show_submodule_summary(o, one->path ? one->path : two->path,
    &one->oid, &two->oid,
    two->dirty_submodule);
  return;
 } else if (o->submodule_format == DIFF_SUBMODULE_INLINE_DIFF &&
     (!one->mode || S_ISGITLINK(one->mode)) &&
     (!two->mode || S_ISGITLINK(two->mode))) {
  show_submodule_inline_diff(o, one->path ? one->path : two->path,
    &one->oid, &two->oid,
    two->dirty_submodule);
  return;
 }

 if (o->flags.allow_textconv) {
  textconv_one = get_textconv(o->repo, one);
  textconv_two = get_textconv(o->repo, two);
 }


 name_a = DIFF_FILE_VALID(one) ? name_a : name_b;
 name_b = DIFF_FILE_VALID(two) ? name_b : name_a;

 a_one = quote_two(a_prefix, name_a + (*name_a == '/'));
 b_two = quote_two(b_prefix, name_b + (*name_b == '/'));
 lbl[0] = DIFF_FILE_VALID(one) ? a_one : "/dev/null";
 lbl[1] = DIFF_FILE_VALID(two) ? b_two : "/dev/null";
 strbuf_addf(&header, "%s%sdiff --git %s %s%s\n", line_prefix, meta, a_one, b_two, reset);
 if (lbl[0][0] == '/') {

  strbuf_addf(&header, "%s%snew file mode %06o%s\n", line_prefix, meta, two->mode, reset);
  if (xfrm_msg)
   strbuf_addstr(&header, xfrm_msg);
  must_show_header = 1;
 }
 else if (lbl[1][0] == '/') {
  strbuf_addf(&header, "%s%sdeleted file mode %06o%s\n", line_prefix, meta, one->mode, reset);
  if (xfrm_msg)
   strbuf_addstr(&header, xfrm_msg);
  must_show_header = 1;
 }
 else {
  if (one->mode != two->mode) {
   strbuf_addf(&header, "%s%sold mode %06o%s\n", line_prefix, meta, one->mode, reset);
   strbuf_addf(&header, "%s%snew mode %06o%s\n", line_prefix, meta, two->mode, reset);
   must_show_header = 1;
  }
  if (xfrm_msg)
   strbuf_addstr(&header, xfrm_msg);





  if ((one->mode ^ two->mode) & S_IFMT)
   goto free_ab_and_return;
  if (complete_rewrite &&
      (textconv_one || !diff_filespec_is_binary(o->repo, one)) &&
      (textconv_two || !diff_filespec_is_binary(o->repo, two))) {
   emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
      header.buf, header.len, 0);
   strbuf_reset(&header);
   emit_rewrite_diff(name_a, name_b, one, two,
       textconv_one, textconv_two, o);
   o->found_changes = 1;
   goto free_ab_and_return;
  }
 }

 if (o->irreversible_delete && lbl[1][0] == '/') {
  emit_diff_symbol(o, DIFF_SYMBOL_HEADER, header.buf,
     header.len, 0);
  strbuf_reset(&header);
  goto free_ab_and_return;
 } else if (!o->flags.text &&
     ( (!textconv_one && diff_filespec_is_binary(o->repo, one)) ||
       (!textconv_two && diff_filespec_is_binary(o->repo, two)) )) {
  struct strbuf sb = STRBUF_INIT;
  if (!one->data && !two->data &&
      S_ISREG(one->mode) && S_ISREG(two->mode) &&
      !o->flags.binary) {
   if (oideq(&one->oid, &two->oid)) {
    if (must_show_header)
     emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
        header.buf, header.len,
        0);
    goto free_ab_and_return;
   }
   emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
      header.buf, header.len, 0);
   strbuf_addf(&sb, "%sBinary files %s and %s differ\n",
        diff_line_prefix(o), lbl[0], lbl[1]);
   emit_diff_symbol(o, DIFF_SYMBOL_BINARY_FILES,
      sb.buf, sb.len, 0);
   strbuf_release(&sb);
   goto free_ab_and_return;
  }
  if (fill_mmfile(o->repo, &mf1, one) < 0 ||
      fill_mmfile(o->repo, &mf2, two) < 0)
   die("unable to read files to diff");

  if (mf1.size == mf2.size &&
      !memcmp(mf1.ptr, mf2.ptr, mf1.size)) {
   if (must_show_header)
    emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
       header.buf, header.len, 0);
   goto free_ab_and_return;
  }
  emit_diff_symbol(o, DIFF_SYMBOL_HEADER, header.buf, header.len, 0);
  strbuf_reset(&header);
  if (o->flags.binary)
   emit_binary_diff(o, &mf1, &mf2);
  else {
   strbuf_addf(&sb, "%sBinary files %s and %s differ\n",
        diff_line_prefix(o), lbl[0], lbl[1]);
   emit_diff_symbol(o, DIFF_SYMBOL_BINARY_FILES,
      sb.buf, sb.len, 0);
   strbuf_release(&sb);
  }
  o->found_changes = 1;
 } else {

  const char *diffopts;
  const char *v;
  xpparam_t xpp;
  xdemitconf_t xecfg;
  struct emit_callback ecbdata;
  const struct userdiff_funcname *pe;

  if (must_show_header) {
   emit_diff_symbol(o, DIFF_SYMBOL_HEADER,
      header.buf, header.len, 0);
   strbuf_reset(&header);
  }

  mf1.size = fill_textconv(o->repo, textconv_one, one, &mf1.ptr);
  mf2.size = fill_textconv(o->repo, textconv_two, two, &mf2.ptr);

  pe = diff_funcname_pattern(o, one);
  if (!pe)
   pe = diff_funcname_pattern(o, two);

  memset(&xpp, 0, sizeof(xpp));
  memset(&xecfg, 0, sizeof(xecfg));
  memset(&ecbdata, 0, sizeof(ecbdata));
  if (o->flags.suppress_diff_headers)
   lbl[0] = ((void*)0);
  ecbdata.label_path = lbl;
  ecbdata.color_diff = want_color(o->use_color);
  ecbdata.ws_rule = whitespace_rule(o->repo->index, name_b);
  if (ecbdata.ws_rule & WS_BLANK_AT_EOF)
   check_blank_at_eof(&mf1, &mf2, &ecbdata);
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
   xdiff_set_find_func(&xecfg, pe->pattern, pe->cflags);

  diffopts = getenv("GIT_DIFF_OPTS");
  if (!diffopts)
   ;
  else if (skip_prefix(diffopts, "--unified=", &v))
   xecfg.ctxlen = strtoul(v, ((void*)0), 10);
  else if (skip_prefix(diffopts, "-u", &v))
   xecfg.ctxlen = strtoul(v, ((void*)0), 10);

  if (o->word_diff)
   init_diff_words_data(&ecbdata, o, one, two);
  if (xdi_diff_outf(&mf1, &mf2, ((void*)0), fn_out_consume,
      &ecbdata, &xpp, &xecfg))
   die("unable to generate diff for %s", one->path);
  if (o->word_diff)
   free_diff_words_data(&ecbdata);
  if (textconv_one)
   free(mf1.ptr);
  if (textconv_two)
   free(mf2.ptr);
  xdiff_clear_find_func(&xecfg);
 }

 free_ab_and_return:
 strbuf_release(&header);
 diff_free_filespec_data(one);
 diff_free_filespec_data(two);
 free(a_one);
 free(b_two);
 return;
}
