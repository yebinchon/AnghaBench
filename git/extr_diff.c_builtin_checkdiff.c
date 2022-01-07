
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct checkdiff_t {char const* filename; int ws_rule; int ctxlen; int status; scalar_t__ flags; int conflict_marker_size; struct diff_options* o; scalar_t__ lineno; } ;
typedef struct checkdiff_t xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef struct checkdiff_t xdemitconf_t ;
struct emit_callback {int ws_rule; int blank_at_eof_in_postimage; } ;
struct TYPE_4__ {int check_failed; } ;
struct diff_options {TYPE_1__ flags; int file; TYPE_2__* repo; } ;
struct diff_filespec {int path; } ;
typedef int mmfile_t ;
typedef int data ;
struct TYPE_5__ {int index; } ;


 int WS_BLANK_AT_EOF ;
 int check_blank_at_eof (int *,int *,struct emit_callback*) ;
 int checkdiff_consume ;
 int checkdiff_consume_hunk ;
 int die (char*,...) ;
 scalar_t__ diff_filespec_is_binary (TYPE_2__*,struct diff_filespec*) ;
 int diff_free_filespec_data (struct diff_filespec*) ;
 scalar_t__ fill_mmfile (TYPE_2__*,int *,struct diff_filespec*) ;
 int fprintf (int ,char*,char const*,int,char*) ;
 int ll_merge_marker_size (int ,char const*) ;
 int memset (struct checkdiff_t*,int ,int) ;
 char* whitespace_error_string (int) ;
 int whitespace_rule (int ,char const*) ;
 scalar_t__ xdi_diff_outf (int *,int *,int ,int ,struct checkdiff_t*,struct checkdiff_t*,struct checkdiff_t*) ;

__attribute__((used)) static void builtin_checkdiff(const char *name_a, const char *name_b,
         const char *attr_path,
         struct diff_filespec *one,
         struct diff_filespec *two,
         struct diff_options *o)
{
 mmfile_t mf1, mf2;
 struct checkdiff_t data;

 if (!two)
  return;

 memset(&data, 0, sizeof(data));
 data.filename = name_b ? name_b : name_a;
 data.lineno = 0;
 data.o = o;
 data.ws_rule = whitespace_rule(o->repo->index, attr_path);
 data.conflict_marker_size = ll_merge_marker_size(o->repo->index, attr_path);

 if (fill_mmfile(o->repo, &mf1, one) < 0 ||
     fill_mmfile(o->repo, &mf2, two) < 0)
  die("unable to read files to diff");







 if (diff_filespec_is_binary(o->repo, two))
  goto free_and_return;
 else {

  xpparam_t xpp;
  xdemitconf_t xecfg;

  memset(&xpp, 0, sizeof(xpp));
  memset(&xecfg, 0, sizeof(xecfg));
  xecfg.ctxlen = 1;
  xpp.flags = 0;
  if (xdi_diff_outf(&mf1, &mf2, checkdiff_consume_hunk,
      checkdiff_consume, &data,
      &xpp, &xecfg))
   die("unable to generate checkdiff for %s", one->path);

  if (data.ws_rule & WS_BLANK_AT_EOF) {
   struct emit_callback ecbdata;
   int blank_at_eof;

   ecbdata.ws_rule = data.ws_rule;
   check_blank_at_eof(&mf1, &mf2, &ecbdata);
   blank_at_eof = ecbdata.blank_at_eof_in_postimage;

   if (blank_at_eof) {
    static char *err;
    if (!err)
     err = whitespace_error_string(WS_BLANK_AT_EOF);
    fprintf(o->file, "%s:%d: %s.\n",
     data.filename, blank_at_eof, err);
    data.status = 1;
   }
  }
 }
 free_and_return:
 diff_free_filespec_data(one);
 diff_free_filespec_data(two);
 if (data.status)
  o->flags.check_failed = 1;
}
