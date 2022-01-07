
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct diff_options {int dummy; } ;
struct diff_filespec {int path; int mode; } ;


 int DIFF_SYMBOL_SUMMARY ;
 struct strbuf STRBUF_INIT ;
 int emit_diff_symbol (struct diff_options*,int ,int ,int ,int ) ;
 int quote_c_style (int ,struct strbuf*,int *,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void show_file_mode_name(struct diff_options *opt, const char *newdelete, struct diff_filespec *fs)
{
 struct strbuf sb = STRBUF_INIT;
 if (fs->mode)
  strbuf_addf(&sb, " %s mode %06o ", newdelete, fs->mode);
 else
  strbuf_addf(&sb, " %s ", newdelete);

 quote_c_style(fs->path, &sb, ((void*)0), 0);
 strbuf_addch(&sb, '\n');
 emit_diff_symbol(opt, DIFF_SYMBOL_SUMMARY,
    sb.buf, sb.len, 0);
 strbuf_release(&sb);
}
