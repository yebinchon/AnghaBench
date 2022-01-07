
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int _ (char*) ;
 int die_errno (int ,...) ;
 int fileno (int ) ;
 int stdin ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int ) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;

__attribute__((used)) static void read_input_file(struct strbuf *sb, const char *file)
{
 if (file) {
  if (strbuf_read_file(sb, file, 0) < 0)
   die_errno(_("could not read input file '%s'"), file);
 } else {
  if (strbuf_read(sb, fileno(stdin), 0) < 0)
   die_errno(_("could not read from stdin"));
 }
}
