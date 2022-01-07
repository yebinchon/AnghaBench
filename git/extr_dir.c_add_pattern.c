
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {scalar_t__ nr; struct path_pattern** patterns; int alloc; } ;
struct path_pattern {char const* pattern; int patternlen; int nowildcardlen; char const* base; int baselen; unsigned int flags; int srcpos; struct pattern_list* pl; } ;


 int ALLOC_GROW (struct path_pattern**,scalar_t__,int ) ;
 int FLEXPTR_ALLOC_MEM (struct path_pattern*,struct path_pattern*,char const*,int) ;
 unsigned int PATTERN_FLAG_MUSTBEDIR ;
 int parse_path_pattern (char const**,int*,unsigned int*,int*) ;
 struct path_pattern* xmalloc (int) ;

void add_pattern(const char *string, const char *base,
   int baselen, struct pattern_list *pl, int srcpos)
{
 struct path_pattern *pattern;
 int patternlen;
 unsigned flags;
 int nowildcardlen;

 parse_path_pattern(&string, &patternlen, &flags, &nowildcardlen);
 if (flags & PATTERN_FLAG_MUSTBEDIR) {
  FLEXPTR_ALLOC_MEM(pattern, pattern, string, patternlen);
 } else {
  pattern = xmalloc(sizeof(*pattern));
  pattern->pattern = string;
 }
 pattern->patternlen = patternlen;
 pattern->nowildcardlen = nowildcardlen;
 pattern->base = base;
 pattern->baselen = baselen;
 pattern->flags = flags;
 pattern->srcpos = srcpos;
 ALLOC_GROW(pl->patterns, pl->nr + 1, pl->alloc);
 pl->patterns[pl->nr++] = pattern;
 pattern->pl = pl;
}
