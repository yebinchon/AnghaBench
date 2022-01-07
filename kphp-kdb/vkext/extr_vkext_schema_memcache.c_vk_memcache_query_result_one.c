
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int ** fetch_function (struct tl_tree*) ;
 int tl_parse_init () ;
 int tmp ;

zval **vk_memcache_query_result_one (struct tl_tree *T) {
  tl_parse_init ();
  START_TIMER (tmp);
  zval **r = fetch_function (T);
  END_TIMER (tmp);
  return r;
}
