
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int generation; int hash; int PID; } ;


 int PID ;
 int crc64 (int*,int) ;
 int lrand48 () ;
 int memcmp (int *,int *,int) ;
 int memcpy (int*,int *,int) ;
 int tree_delete_udp_target_by_hash (int ,struct udp_target*) ;
 int tree_insert_udp_target_by_hash (int ,struct udp_target*,int ) ;
 int udp_target_by_hash ;
 int vkprintf (int,char*,int ) ;

void udp_target_update_hash (struct udp_target *S) {
  static int P[7];
  int x = memcmp (&PID, &S->PID, 12);
  if (x < 0) {
    memcpy (P, &PID, 12);
    memcpy (P + 3, &S->PID, 12);
  } else {
    memcpy (P, &S->PID, 12);
    memcpy (P + 3, &PID, 12);
  }
  P[6] = S->generation;
  if (S->hash) {
    vkprintf (2, "delete: hash = %lld\n", S->hash);
    udp_target_by_hash = tree_delete_udp_target_by_hash (udp_target_by_hash, S);
  }
  S->hash = crc64 (P, 28);
  vkprintf (2, "insert: hash = %lld\n", S->hash);
  udp_target_by_hash = tree_insert_udp_target_by_hash (udp_target_by_hash, S, lrand48 ());
}
