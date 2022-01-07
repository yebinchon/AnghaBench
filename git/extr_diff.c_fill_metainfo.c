
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ binary; scalar_t__ full_index; } ;
struct diff_options {int repo; TYPE_1__ flags; } ;
struct diff_filespec {char const* mode; int oid; } ;
struct diff_filepair {int status; int score; } ;
typedef int mmfile_t ;
struct TYPE_4__ {unsigned int hexsz; } ;


 unsigned int const DEFAULT_ABBREV ;
 int DIFF_METAINFO ;
 int DIFF_RESET ;



 int PATH_MAX ;
 int diff_abbrev_oid (int *,int) ;
 scalar_t__ diff_filespec_is_binary (int ,struct diff_filespec*) ;
 char* diff_get_color (int,int ) ;
 char* diff_line_prefix (struct diff_options*) ;
 int fill_mmfile (int ,int *,struct diff_filespec*) ;
 int oideq (int *,int *) ;
 int quote_c_style (char const*,struct strbuf*,int *,int ) ;
 int similarity_index (struct diff_filepair*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_init (struct strbuf*,int) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static void fill_metainfo(struct strbuf *msg,
     const char *name,
     const char *other,
     struct diff_filespec *one,
     struct diff_filespec *two,
     struct diff_options *o,
     struct diff_filepair *p,
     int *must_show_header,
     int use_color)
{
 const char *set = diff_get_color(use_color, DIFF_METAINFO);
 const char *reset = diff_get_color(use_color, DIFF_RESET);
 const char *line_prefix = diff_line_prefix(o);

 *must_show_header = 1;
 strbuf_init(msg, PATH_MAX * 2 + 300);
 switch (p->status) {
 case 130:
  strbuf_addf(msg, "%s%ssimilarity index %d%%",
       line_prefix, set, similarity_index(p));
  strbuf_addf(msg, "%s\n%s%scopy from ",
       reset, line_prefix, set);
  quote_c_style(name, msg, ((void*)0), 0);
  strbuf_addf(msg, "%s\n%s%scopy to ", reset, line_prefix, set);
  quote_c_style(other, msg, ((void*)0), 0);
  strbuf_addf(msg, "%s\n", reset);
  break;
 case 128:
  strbuf_addf(msg, "%s%ssimilarity index %d%%",
       line_prefix, set, similarity_index(p));
  strbuf_addf(msg, "%s\n%s%srename from ",
       reset, line_prefix, set);
  quote_c_style(name, msg, ((void*)0), 0);
  strbuf_addf(msg, "%s\n%s%srename to ",
       reset, line_prefix, set);
  quote_c_style(other, msg, ((void*)0), 0);
  strbuf_addf(msg, "%s\n", reset);
  break;
 case 129:
  if (p->score) {
   strbuf_addf(msg, "%s%sdissimilarity index %d%%%s\n",
        line_prefix,
        set, similarity_index(p), reset);
   break;
  }

 default:
  *must_show_header = 0;
 }
 if (one && two && !oideq(&one->oid, &two->oid)) {
  const unsigned hexsz = the_hash_algo->hexsz;
  int abbrev = o->flags.full_index ? hexsz : DEFAULT_ABBREV;

  if (o->flags.binary) {
   mmfile_t mf;
   if ((!fill_mmfile(o->repo, &mf, one) &&
        diff_filespec_is_binary(o->repo, one)) ||
       (!fill_mmfile(o->repo, &mf, two) &&
        diff_filespec_is_binary(o->repo, two)))
    abbrev = hexsz;
  }
  strbuf_addf(msg, "%s%sindex %s..%s", line_prefix, set,
       diff_abbrev_oid(&one->oid, abbrev),
       diff_abbrev_oid(&two->oid, abbrev));
  if (one->mode == two->mode)
   strbuf_addf(msg, " %06o", one->mode);
  strbuf_addf(msg, "%s\n", reset);
 }
}
