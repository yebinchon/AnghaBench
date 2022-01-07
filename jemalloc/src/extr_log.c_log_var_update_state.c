
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int state; } ;
typedef TYPE_1__ log_var_t ;


 int ATOMIC_ACQUIRE ;
 int ATOMIC_RELAXED ;
 int JEMALLOC_LOG_VAR_BUFSIZE ;
 int LOG_ENABLED ;
 int LOG_INITIALIZED_NOT_ENABLED ;
 int assert (int) ;
 int atomic_load_b (int *,int ) ;
 int atomic_store_u (int *,int,int ) ;
 int log_init_done ;
 char* log_var_extract_segment (char const*) ;
 scalar_t__ log_var_matches_segment (char const*,char const*,char const*,char const*) ;
 char const* log_var_names ;
 int strlen (char*) ;

unsigned
log_var_update_state(log_var_t *log_var) {
 const char *log_var_begin = log_var->name;
 const char *log_var_end = log_var->name + strlen(log_var->name);


 const char *segment_begin = log_var_names;





 if (!atomic_load_b(&log_init_done, ATOMIC_ACQUIRE)) {
  return LOG_INITIALIZED_NOT_ENABLED;
 }

 while (1) {
  const char *segment_end = log_var_extract_segment(
      segment_begin);
  assert(segment_end < log_var_names + JEMALLOC_LOG_VAR_BUFSIZE);
  if (log_var_matches_segment(segment_begin, segment_end,
      log_var_begin, log_var_end)) {
   atomic_store_u(&log_var->state, LOG_ENABLED,
       ATOMIC_RELAXED);
   return LOG_ENABLED;
  }
  if (*segment_end == '\0') {

   atomic_store_u(&log_var->state,
       LOG_INITIALIZED_NOT_ENABLED, ATOMIC_RELAXED);
   return LOG_INITIALIZED_NOT_ENABLED;
  }

  segment_begin = segment_end + 1;
 }
}
