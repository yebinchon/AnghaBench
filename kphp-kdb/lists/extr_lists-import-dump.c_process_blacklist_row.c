
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* I ;
 int adj_rec ;
 size_t bl_enemy ;
 size_t bl_owner ;
 int check_id (int) ;
 int log_11_set (int,int,int ,int ) ;

void process_blacklist_row (void) {
  int owner = I[bl_owner];
  int enemy = I[bl_enemy];
  if (enemy <= 0 || owner <= 0) {

    return;
    }
  if (!check_id (owner)) {
    return;
  }
  log_11_set (owner, enemy, 0, 0);
  adj_rec++;
}
