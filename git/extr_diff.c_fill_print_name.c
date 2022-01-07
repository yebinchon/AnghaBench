
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct diffstat_file {int print_name; int comments; int name; int from_name; scalar_t__ is_renamed; } ;


 struct strbuf STRBUF_INIT ;
 int pprint_rename (struct strbuf*,int ,int ) ;
 int quote_c_style (int ,struct strbuf*,int *,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static void fill_print_name(struct diffstat_file *file)
{
 struct strbuf pname = STRBUF_INIT;

 if (file->print_name)
  return;

 if (file->is_renamed)
  pprint_rename(&pname, file->from_name, file->name);
 else
  quote_c_style(file->name, &pname, ((void*)0), 0);

 if (file->comments)
  strbuf_addf(&pname, " (%s)", file->comments);

 file->print_name = strbuf_detach(&pname, ((void*)0));
}
