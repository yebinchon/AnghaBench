
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct mailinfo {int filter_stage; } ;


 int handle_commit_msg (struct mailinfo*,struct strbuf*) ;
 int handle_patch (struct mailinfo*,struct strbuf*) ;

__attribute__((used)) static void handle_filter(struct mailinfo *mi, struct strbuf *line)
{
 switch (mi->filter_stage) {
 case 0:
  if (!handle_commit_msg(mi, line))
   break;
  mi->filter_stage++;

 case 1:
  handle_patch(mi, line);
  break;
 }
}
