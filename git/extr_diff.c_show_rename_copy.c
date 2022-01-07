
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {TYPE_2__* two; TYPE_1__* one; } ;
struct TYPE_4__ {int path; } ;
struct TYPE_3__ {int path; } ;


 int DIFF_SYMBOL_SUMMARY ;
 struct strbuf STRBUF_INIT ;
 int emit_diff_symbol (struct diff_options*,int ,int ,int ,int ) ;
 int pprint_rename (struct strbuf*,int ,int ) ;
 int show_mode_change (struct diff_options*,struct diff_filepair*,int ) ;
 int similarity_index (struct diff_filepair*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void show_rename_copy(struct diff_options *opt, const char *renamecopy,
  struct diff_filepair *p)
{
 struct strbuf sb = STRBUF_INIT;
 struct strbuf names = STRBUF_INIT;

 pprint_rename(&names, p->one->path, p->two->path);
 strbuf_addf(&sb, " %s %s (%d%%)\n",
      renamecopy, names.buf, similarity_index(p));
 strbuf_release(&names);
 emit_diff_symbol(opt, DIFF_SYMBOL_SUMMARY,
     sb.buf, sb.len, 0);
 show_mode_change(opt, p, 0);
 strbuf_release(&sb);
}
