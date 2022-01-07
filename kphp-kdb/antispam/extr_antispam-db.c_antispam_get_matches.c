
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uahash_t ;
struct TYPE_4__ {int flags; int id; } ;
typedef TYPE_1__ pattern_t ;
typedef int ip_t ;
typedef int byte ;
struct TYPE_5__ {TYPE_1__** first; } ;


 int ANTISPAM_DB_FIELDS_FLAGS ;
 int ANTISPAM_DB_FIELDS_IDS ;
 int antispam_db_request ;
 int antispam_get_matches_dec (int ,int ,char const*,int) ;
 int antispam_get_matches_inc (int ,int ,char const*,int) ;
 TYPE_2__ heap_pattern ;
 int st_relax_max (int ,int) ;
 int st_vec_pb (int ,int ) ;
 int st_vec_resize (int ,int ) ;
 int st_vec_size (TYPE_2__) ;
 int stats_all_matches_cnt ;
 int stats_matches_cnt ;
 int stats_matches_max ;
 int stats_matches_sum ;

int antispam_get_matches (ip_t ip, uahash_t uahash, const char *text, byte fields, int limit) {
  int matches_cnt = 0;
  if (limit >= 0) {
    matches_cnt = antispam_get_matches_inc (ip, uahash, text, limit);
  } else {
    matches_cnt = antispam_get_matches_dec (ip, uahash, text, -limit);
  }

  st_vec_resize (antispam_db_request, 0);
  pattern_t **first = heap_pattern.first;
  pattern_t **last = first + st_vec_size (heap_pattern);
  for (; first != last; ++first) {
    if (fields & ANTISPAM_DB_FIELDS_IDS) {
      st_vec_pb (antispam_db_request, (*first)->id);
    }
    if (fields & ANTISPAM_DB_FIELDS_FLAGS) {
      st_vec_pb (antispam_db_request, (*first)->flags);
    }
  }

  ++stats_all_matches_cnt;
  if (matches_cnt != 0) {
    ++stats_matches_cnt;
    stats_matches_sum += matches_cnt;
    st_relax_max (stats_matches_max, matches_cnt);
  }
  return matches_cnt;
}
