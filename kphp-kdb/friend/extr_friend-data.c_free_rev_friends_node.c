
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rev_friends_t ;


 int alloc_rev_friends_nodes ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_rev_friends_node (rev_friends_t *T) {
  zfree (T, sizeof (rev_friends_t));
  alloc_rev_friends_nodes--;
}
