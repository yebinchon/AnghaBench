
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
struct pattern_list {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int name; } ;
typedef enum pattern_match_result { ____Placeholder_pattern_match_result } pattern_match_result ;


 int DT_DIR ;
 int UNDECIDED ;
 int clear_ce_flags_1 (struct index_state*,struct cache_entry**,int,struct strbuf*,int,int,struct pattern_list*,int) ;
 int path_matches_pattern_list (int ,scalar_t__,char*,int*,struct pattern_list*,struct index_state*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int clear_ce_flags_dir(struct index_state *istate,
         struct cache_entry **cache, int nr,
         struct strbuf *prefix,
         char *basename,
         int select_mask, int clear_mask,
         struct pattern_list *pl,
         enum pattern_match_result default_match)
{
 struct cache_entry **cache_end;
 int dtype = DT_DIR;
 int rc;
 enum pattern_match_result ret;
 ret = path_matches_pattern_list(prefix->buf, prefix->len,
     basename, &dtype, pl, istate);

 strbuf_addch(prefix, '/');


 if (ret == UNDECIDED)
  ret = default_match;

 for (cache_end = cache; cache_end != cache + nr; cache_end++) {
  struct cache_entry *ce = *cache_end;
  if (strncmp(ce->name, prefix->buf, prefix->len))
   break;
 }
 rc = clear_ce_flags_1(istate, cache, cache_end - cache,
         prefix,
         select_mask, clear_mask,
         pl, ret);
 strbuf_setlen(prefix, prefix->len - 1);
 return rc;
}
