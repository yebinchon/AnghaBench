
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 scalar_t__ EOF ;
 int REALLOC_ARRAY (char const**,int) ;
 struct strbuf STRBUF_INIT ;
 int stdin ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char*,char) ;
 char* xstrdup (char*) ;
 char* xstrdup_or_null (char*) ;

int walker_targets_stdin(char ***target, const char ***write_ref)
{
 int targets = 0, targets_alloc = 0;
 struct strbuf buf = STRBUF_INIT;
 *target = ((void*)0); *write_ref = ((void*)0);
 while (1) {
  char *rf_one = ((void*)0);
  char *tg_one;

  if (strbuf_getline_lf(&buf, stdin) == EOF)
   break;
  tg_one = buf.buf;
  rf_one = strchr(tg_one, '\t');
  if (rf_one)
   *rf_one++ = 0;

  if (targets >= targets_alloc) {
   targets_alloc = targets_alloc ? targets_alloc * 2 : 64;
   REALLOC_ARRAY(*target, targets_alloc);
   REALLOC_ARRAY(*write_ref, targets_alloc);
  }
  (*target)[targets] = xstrdup(tg_one);
  (*write_ref)[targets] = xstrdup_or_null(rf_one);
  targets++;
 }
 strbuf_release(&buf);
 return targets;
}
