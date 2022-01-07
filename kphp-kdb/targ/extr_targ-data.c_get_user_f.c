
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int utree_t ;
struct TYPE_9__ {int rate; int uid; int user_id; int privacy; int cartesian_y; scalar_t__ prev_user_creations; } ;
typedef TYPE_1__ user_t ;
struct TYPE_10__ {int * uplink; } ;


 TYPE_1__** User ;
 int conv_user_id (int) ;
 int lrand48 () ;
 int max_uid ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_3__* rate_tree ;
 int tot_users ;
 scalar_t__ user_creations ;
 TYPE_3__* utree_insert_node (TYPE_3__*,int *) ;
 TYPE_1__* zmalloc (int) ;

user_t *get_user_f (int user_id) {
  int i = conv_user_id (user_id);
  user_t *U;
  if (i < 0) { return 0; }
  U = User[i];
  if (U) { return U; }
  U = zmalloc (sizeof (user_t));
  memset (U, 0, sizeof(user_t));
  U->rate = (lrand48 () & 255) - 256;
  U->uid = i;
  U->user_id = user_id;
  U->privacy = 1;
  U->prev_user_creations = ++user_creations;
  User[i] = U;
  if (i > max_uid) { max_uid = i; }
  tot_users++;

  U->cartesian_y = lrand48 ();
  rate_tree = utree_insert_node (rate_tree, (utree_t *)U);
  rate_tree->uplink = (utree_t *)&rate_tree;

  return U;
}
