
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct argv_array {int dummy; } ;


 scalar_t__ EOF ;
 int argv_array_push (struct argv_array*,int ) ;
 int stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;

__attribute__((used)) static void read_pathspec_from_stdin(struct strbuf *sb,
         struct argv_array *prune)
{
 while (strbuf_getline(sb, stdin) != EOF)
  argv_array_push(prune, sb->buf);
}
