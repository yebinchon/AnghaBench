
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PL ;
 int remove_unused_cats () ;
 int remove_unused_uids (int) ;
 int resort_series () ;

__attribute__((used)) static int improve_privacy (int owner_id) {
  remove_unused_uids (owner_id);
  remove_unused_cats ();
  resort_series ();
  remove_unused_cats ();
  resort_series ();
  return PL;
}
