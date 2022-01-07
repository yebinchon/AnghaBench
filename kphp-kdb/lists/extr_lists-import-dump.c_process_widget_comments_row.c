
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* I ;
 int adj_rec ;
 int check_id (int) ;
 int fprintf (int ,char*,int) ;
 int last_date ;
 int log_timestamp (int) ;
 int log_x22_set (int,int,int,int,int,int) ;
 int stderr ;
 size_t wc_app ;
 size_t wc_comments ;
 size_t wc_date ;
 size_t wc_likes ;
 size_t wc_owner ;
 size_t wc_page ;
 size_t wc_post ;

void process_widget_comments_row (void) {
  int likes = I[wc_likes];
  int comments = I[wc_comments];
  int app_id = I[wc_app];
  int date = I[wc_date];
  if (date < last_date) {
    fprintf (stderr, "date goes back by %d seconds\n", last_date - date);
  } else if (date > last_date) {
    log_timestamp (date);
    last_date = date;
  }
  if (!check_id (app_id)) {
    return;
  }
  log_x22_set (app_id, I[wc_page], I[wc_owner], I[wc_post], likes, !!likes * 2 + !!comments);
  adj_rec++;
}
