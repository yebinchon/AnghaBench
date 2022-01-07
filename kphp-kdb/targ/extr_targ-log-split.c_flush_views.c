
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_views {unsigned int ad_id; scalar_t__ views; int type; } ;


 int LEV_TARG_VIEWS ;
 unsigned int MAX_AD_ID ;
 scalar_t__* Views ;
 int wr_bytes ;
 int wr_rec ;
 int wr_views_rec ;
 struct lev_targ_views* write_alloc (int) ;

__attribute__((used)) static void flush_views (unsigned ad_id) {
  if (ad_id >= MAX_AD_ID || !Views[ad_id]) {
    return;
  }
  struct lev_targ_views *E = write_alloc (12);
  E->type = LEV_TARG_VIEWS;
  E->ad_id = ad_id;
  E->views = Views[ad_id];
  Views[ad_id] = 0;
  wr_views_rec++;
  wr_rec++;
  wr_bytes += 12;
}
