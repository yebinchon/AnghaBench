
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nstime_t ;
typedef int emitter_t ;


 char* JEMALLOC_VERSION ;
 int NSTIME_ZERO_INITIALIZER ;
 int emitter_json_kv (int *,char*,int ,...) ;
 int emitter_json_object_end (int *) ;
 int emitter_json_object_kv_begin (int *,char*) ;
 int emitter_type_int ;
 int emitter_type_string ;
 int emitter_type_uint64 ;
 int lg_prof_sample ;
 int log_start_timestamp ;
 int nstime_ns (int *) ;
 int nstime_update (int *) ;
 int prof_getpid () ;

__attribute__((used)) static void
prof_log_emit_metadata(emitter_t *emitter) {
 emitter_json_object_kv_begin(emitter, "info");

 nstime_t now = NSTIME_ZERO_INITIALIZER;

 nstime_update(&now);
 uint64_t ns = nstime_ns(&now) - nstime_ns(&log_start_timestamp);
 emitter_json_kv(emitter, "duration", emitter_type_uint64, &ns);

 char *vers = JEMALLOC_VERSION;
 emitter_json_kv(emitter, "version",
     emitter_type_string, &vers);

 emitter_json_kv(emitter, "lg_sample_rate",
     emitter_type_int, &lg_prof_sample);

 int pid = prof_getpid();
 emitter_json_kv(emitter, "pid", emitter_type_int, &pid);

 emitter_json_object_end(emitter);
}
