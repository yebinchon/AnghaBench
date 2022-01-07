
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct mailinfo {int patch_lines; int patchfile; } ;


 int fwrite (int ,int,int ,int ) ;

__attribute__((used)) static void handle_patch(struct mailinfo *mi, const struct strbuf *line)
{
 fwrite(line->buf, 1, line->len, mi->patchfile);
 mi->patch_lines++;
}
