
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct pattern_list {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; char* name; } ;
typedef enum pattern_match_result { ____Placeholder_pattern_match_result } pattern_match_result ;


 int MATCHED ;
 int UNDECIDED ;
 int ce_namelen (struct cache_entry*) ;
 int ce_to_dtype (struct cache_entry*) ;
 int clear_ce_flags_dir (struct index_state*,struct cache_entry**,int,struct strbuf*,scalar_t__,int,int,struct pattern_list*,int) ;
 int path_matches_pattern_list (char*,int ,char const*,int*,struct pattern_list*,struct index_state*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int clear_ce_flags_1(struct index_state *istate,
       struct cache_entry **cache, int nr,
       struct strbuf *prefix,
       int select_mask, int clear_mask,
       struct pattern_list *pl,
       enum pattern_match_result default_match)
{
 struct cache_entry **cache_end = cache + nr;





 while(cache != cache_end) {
  struct cache_entry *ce = *cache;
  const char *name, *slash;
  int len, dtype;
  enum pattern_match_result ret;

  if (select_mask && !(ce->ce_flags & select_mask)) {
   cache++;
   continue;
  }

  if (prefix->len && strncmp(ce->name, prefix->buf, prefix->len))
   break;

  name = ce->name + prefix->len;
  slash = strchr(name, '/');


  if (slash) {
   int processed;

   len = slash - name;
   strbuf_add(prefix, name, len);

   processed = clear_ce_flags_dir(istate, cache, cache_end - cache,
             prefix,
             prefix->buf + prefix->len - len,
             select_mask, clear_mask,
             pl, default_match);


   if (processed) {
    cache += processed;
    strbuf_setlen(prefix, prefix->len - len);
    continue;
   }

   strbuf_addch(prefix, '/');
   cache += clear_ce_flags_1(istate, cache, cache_end - cache,
        prefix,
        select_mask, clear_mask, pl,
        default_match);
   strbuf_setlen(prefix, prefix->len - len - 1);
   continue;
  }


  dtype = ce_to_dtype(ce);
  ret = path_matches_pattern_list(ce->name,
      ce_namelen(ce),
      name, &dtype, pl, istate);
  if (ret == UNDECIDED)
   ret = default_match;
  if (ret == MATCHED)
   ce->ce_flags &= ~clear_mask;
  cache++;
 }
 return nr - (cache_end - cache);
}
