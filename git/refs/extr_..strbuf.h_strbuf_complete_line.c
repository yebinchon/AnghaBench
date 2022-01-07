
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_complete (struct strbuf*,char) ;

__attribute__((used)) static inline void strbuf_complete_line(struct strbuf *sb)
{
 strbuf_complete(sb, '\n');
}
