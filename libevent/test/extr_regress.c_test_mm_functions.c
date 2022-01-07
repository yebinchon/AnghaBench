
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int dummy; } ;
struct event_base {int dummy; } ;


 struct event_base* check_dummy_mem_ok (struct event_base*) ;
 int dummy_free ;
 int dummy_malloc ;
 int dummy_realloc ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new_with_config (struct event_config*) ;
 int event_config_avoid_method (struct event_config*,char*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 int event_set_mem_functions (int ,int ,int ) ;
 int tt_assert (struct event_base*) ;

__attribute__((used)) static void
test_mm_functions(void *arg)
{
 struct event_base *b = ((void*)0);
 struct event_config *cfg = ((void*)0);
 event_set_mem_functions(dummy_malloc, dummy_realloc, dummy_free);
 cfg = event_config_new();
 event_config_avoid_method(cfg, "Nonesuch");
 b = event_base_new_with_config(cfg);
 tt_assert(b);
 tt_assert(check_dummy_mem_ok(b));
end:
 if (cfg)
  event_config_free(cfg);
 if (b)
  event_base_free(b);
}
