
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* hash_algo; } ;
struct object_id {int dummy; } ;
struct min_abbrev_data {int init_len; int cur_len; char* hex; struct object_id const* oid; struct repository* repo; } ;
struct disambiguate_state {int always_call_fn; void* cb_data; int fn; } ;
struct TYPE_2__ {unsigned int hexsz; } ;


 int DIV_ROUND_UP (int,int) ;
 int FALLBACK_DEFAULT_ABBREV ;
 int find_abbrev_len_packed (struct min_abbrev_data*) ;
 int find_short_object_filename (struct disambiguate_state*) ;
 int finish_object_disambiguation (struct disambiguate_state*,struct object_id*) ;
 scalar_t__ init_object_disambiguation (struct repository*,char*,int,struct disambiguate_state*) ;
 int msb (unsigned long) ;
 int oid_to_hex_r (char*,struct object_id const*) ;
 unsigned long repo_approximate_object_count (struct repository*) ;
 int repo_extend_abbrev_len ;

int repo_find_unique_abbrev_r(struct repository *r, char *hex,
         const struct object_id *oid, int len)
{
 struct disambiguate_state ds;
 struct min_abbrev_data mad;
 struct object_id oid_ret;
 const unsigned hexsz = r->hash_algo->hexsz;

 if (len < 0) {
  unsigned long count = repo_approximate_object_count(r);





  len = msb(count) + 1;






  len = DIV_ROUND_UP(len, 2);



  if (len < FALLBACK_DEFAULT_ABBREV)
   len = FALLBACK_DEFAULT_ABBREV;
 }

 oid_to_hex_r(hex, oid);
 if (len == hexsz || !len)
  return hexsz;

 mad.repo = r;
 mad.init_len = len;
 mad.cur_len = len;
 mad.hex = hex;
 mad.oid = oid;

 find_abbrev_len_packed(&mad);

 if (init_object_disambiguation(r, hex, mad.cur_len, &ds) < 0)
  return -1;

 ds.fn = repo_extend_abbrev_len;
 ds.always_call_fn = 1;
 ds.cb_data = (void *)&mad;

 find_short_object_filename(&ds);
 (void)finish_object_disambiguation(&ds, &oid_ret);

 hex[mad.cur_len] = 0;
 return mad.cur_len;
}
