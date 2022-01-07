
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct userdiff_driver {char* external; } ;
struct strbuf {char* buf; scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ allow_external; } ;
struct diff_options {int file; int use_color; TYPE_2__* repo; TYPE_1__ flags; } ;
struct diff_filespec {int dummy; } ;
struct diff_filepair {scalar_t__ status; scalar_t__ score; } ;
struct TYPE_4__ {int index; } ;


 scalar_t__ DIFF_STATUS_MODIFIED ;
 int builtin_diff (char const*,char const*,struct diff_filespec*,struct diff_filespec*,char const*,int,struct diff_options*,int) ;
 int fill_metainfo (struct strbuf*,char const*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_options*,struct diff_filepair*,int*,int) ;
 int fprintf (int ,char*,char const*) ;
 int run_external_diff (char const*,char const*,char const*,struct diff_filespec*,struct diff_filespec*,char const*,struct diff_options*) ;
 struct userdiff_driver* userdiff_find_by_path (int ,char const*) ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static void run_diff_cmd(const char *pgm,
    const char *name,
    const char *other,
    const char *attr_path,
    struct diff_filespec *one,
    struct diff_filespec *two,
    struct strbuf *msg,
    struct diff_options *o,
    struct diff_filepair *p)
{
 const char *xfrm_msg = ((void*)0);
 int complete_rewrite = (p->status == DIFF_STATUS_MODIFIED) && p->score;
 int must_show_header = 0;


 if (o->flags.allow_external) {
  struct userdiff_driver *drv;

  drv = userdiff_find_by_path(o->repo->index, attr_path);
  if (drv && drv->external)
   pgm = drv->external;
 }

 if (msg) {




  fill_metainfo(msg, name, other, one, two, o, p,
         &must_show_header,
         want_color(o->use_color) && !pgm);
  xfrm_msg = msg->len ? msg->buf : ((void*)0);
 }

 if (pgm) {
  run_external_diff(pgm, name, other, one, two, xfrm_msg, o);
  return;
 }
 if (one && two)
  builtin_diff(name, other ? other : name,
        one, two, xfrm_msg, must_show_header,
        o, complete_rewrite);
 else
  fprintf(o->file, "* Unmerged path %s\n", name);
}
