
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_combinator_tree {scalar_t__ type; scalar_t__ type_len; int act; } ;


 int TL_ACT (int ) ;
 int TL_ERROR (char*) ;
 int TL_TYPE (scalar_t__) ;
 int _tl_finish_subtree (struct tl_combinator_tree*,int ,int ) ;
 int assert (struct tl_combinator_tree*) ;
 scalar_t__ type_type ;
 int vkprintf (int,char*,int ,int ) ;

int tl_finish_subtree (struct tl_combinator_tree *R) {
  assert (R);
  vkprintf (2, "finish_subtree. Type = %s. Act = %s\n", TL_TYPE (R->type), TL_ACT (R->act));
  if (R->type != type_type) {
    return 1;
  }
  if (R->type_len >= 0) {
    if (R->type_len > 0) {
      TL_ERROR ("Not enough params\n");
      return 0;
    }
    return 1;
  }
  return _tl_finish_subtree (R, 0, 0);
}
