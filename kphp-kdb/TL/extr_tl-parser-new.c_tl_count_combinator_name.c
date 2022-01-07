
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_constructor {int name; int right; int left; scalar_t__ id; scalar_t__ real_id; } ;


 int assert (struct tl_constructor*) ;
 int buf ;
 int buf_pos ;
 int compute_crc32 (int ,int ) ;
 int tl_buf_add_string (char*,int) ;
 int tl_buf_add_string_nospace (scalar_t__,int) ;
 int tl_buf_add_tree (int ,int) ;
 int tl_buf_reset () ;

int tl_count_combinator_name (struct tl_constructor *c) {
  assert (c);
  tl_buf_reset ();
  tl_buf_add_string_nospace (c->real_id ? c->real_id : c->id, -1);
  tl_buf_add_tree (c->left, 1);
  tl_buf_add_string ("=", -1);
  tl_buf_add_tree (c->right, 1);

  if (!c->name) {
    c->name = compute_crc32 (buf, buf_pos);
  }
  return c->name;
}
