
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {scalar_t__ prev; int type; int long_unique_visitors; int last_month_unique_visitors; int last_week_unique_visitors; int visitors; int timezone; void** subcnt; void* mask_subcnt; void* visitors_source; void* visitors_geoip_countries; void* visitors_countries; void* visitors_sex_age; void* visitors_cities; void* visitors_section; void* visitors_polit; void* visitors_mstatus; void* visitors_age; scalar_t__ visitors_sex; void* valid_until; void* created_at; void* deletes; void* unique_visitors; void* views; void* counter_id; } ;


 scalar_t__ FORCE_COUNTER_TYPE ;
 int MAX_AGE ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX_AGE ;
 int MAX_SOURCE ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 int get_cnt_type (void*) ;
 int index_version ;
 int ipopcount (void*) ;
 struct counter* malloc_counter (int ,int) ;
 void* read_list (int ) ;
 void* read_list2 () ;
 int read_tree () ;
 int readin (char*,int) ;
 int readin_char () ;
 void* readin_int () ;
 void* readin_long () ;
 int readin_skip (int) ;
 int skip_tree () ;
 int stderr ;
 void** zzmalloc (int) ;

struct counter* read_counter (int readtree) {
  int i,j;
  struct counter *C = malloc_counter (0, -1);
  assert (C->prev == 0);
  if (index_version >= 4) {
    C->counter_id = readin_long ();
  } else {
    C->counter_id = readin_int ();
  }
  C->created_at = readin_int ();
  C->type = readin_int ();
  if (FORCE_COUNTER_TYPE) {
    C->type = (C->type & 0xffff0000) | get_cnt_type (C->counter_id);
  }
  C->views = readin_int ();
  C->unique_visitors = readin_int ();
  C->deletes = readin_int ();
  C->created_at = readin_int ();
  C->valid_until = readin_int ();
  if (index_version >= 3) {
    C->long_unique_visitors = readin_int ();
    C->last_month_unique_visitors = readin_int ();
    C->last_week_unique_visitors = readin_int ();
  } else if (index_version >= 2) {
    C->long_unique_visitors = readin_int ();
    C->last_month_unique_visitors = readin_int ();
    C->last_week_unique_visitors = -1;
  } else {
    C->long_unique_visitors = -1;
    C->last_month_unique_visitors = -1;
    C->last_week_unique_visitors = readin_int ();
  }
  readin ((char *)C->visitors_sex, sizeof (int) * 2);
  int flag = readin_int ();
  if (flag & (1 << 0)) { C->visitors_age = read_list (MAX_AGE); }
  if (flag & (1 << 1)) { C->visitors_mstatus = read_list (MAX_MSTATUS); }
  if (flag & (1 << 2)) { C->visitors_polit = read_list (MAX_POLIT); }
  if (flag & (1 << 3)) { C->visitors_section = read_list (MAX_SECTION); }
  if (flag & (1 << 4)) { C->visitors_cities = read_list2 (); }
  if (flag & (1 << 5)) { C->visitors_sex_age = read_list (MAX_SEX_AGE); }
  if (flag & (1 << 6)) { C->visitors_countries = read_list2 (); }
  if (flag & (1 << 7)) { C->visitors_geoip_countries = read_list2 (); }
  if (flag & (1 << 8)) { C->visitors_source = read_list (MAX_SOURCE); }
  if (index_version == 0) {
    int t = readin_int ();
    if (t > 0) {
      fprintf (stderr, "Dropping old data about subcounters.\n");
    }
    readin_skip (t * sizeof (int));
    C->mask_subcnt = 0;
  } else {
    C->mask_subcnt = readin_long();
  }
  j = ipopcount(C->mask_subcnt);
  if (j > 0) {
    C->subcnt = zzmalloc(sizeof(int) * j);
    for(i=0; i < j; i++) {
      C->subcnt[i] = readin_int();
    }
  }



  C->timezone = readin_char ();
  if (readtree) { C->visitors = read_tree (); }
  else { skip_tree (); }
  assert (C->prev == 0);
  return C;
}
