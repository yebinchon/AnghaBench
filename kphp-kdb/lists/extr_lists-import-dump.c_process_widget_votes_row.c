
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* I ;
 int adj_rec ;
 scalar_t__ check_id (int) ;
 int fprintf (int ,char*,int) ;
 int last_date ;
 int log_11_set (int,int,int,int ) ;
 int log_timestamp (int) ;
 int stderr ;
 size_t wv_option ;
 size_t wv_user ;
 size_t wv_voted ;
 size_t wv_voting ;

void process_widget_votes_row (void) {
  int user = I[wv_user];
  int voting = I[wv_voting];
  int option = I[wv_option];
  int date = I[wv_voted];
  if (date < last_date - 10) {
    fprintf (stderr, "date goes back by %d seconds\n", last_date - date);
  } else if (date > last_date) {
    log_timestamp (date);
    last_date = date;
  }
  if (check_id (option)) {
    log_11_set (option, user, 0, 0);
    adj_rec++;
  }
  if (check_id (user)) {
    log_11_set (-user, voting, option, 0);
    adj_rec++;
  }
}
