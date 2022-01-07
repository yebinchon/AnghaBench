
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {char* buf; unsigned long size; } ;
struct grep_opt {int dummy; } ;


 int GREP_SOURCE_BUF ;
 int grep_source (struct grep_opt*,struct grep_source*) ;
 int grep_source_clear (struct grep_source*) ;
 int grep_source_init (struct grep_source*,int ,int *,int *,int *) ;

int grep_buffer(struct grep_opt *opt, char *buf, unsigned long size)
{
 struct grep_source gs;
 int r;

 grep_source_init(&gs, GREP_SOURCE_BUF, ((void*)0), ((void*)0), ((void*)0));
 gs.buf = buf;
 gs.size = size;

 r = grep_source(opt, &gs);

 grep_source_clear(&gs);
 return r;
}
