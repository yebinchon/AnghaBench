
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emitter_t ;


 int emitter_begin (int *) ;
 int emitter_end (int *) ;
 int emitter_json_array_begin (int *) ;
 int emitter_json_array_end (int *) ;
 int emitter_json_key (int *,char*) ;
 int emitter_json_kv (int *,char*,int ,int*) ;
 int emitter_json_object_begin (int *) ;
 int emitter_json_object_end (int *) ;
 int emitter_json_value (int *,int ,int*) ;
 int emitter_type_int ;

__attribute__((used)) static void
emit_json_array(emitter_t *emitter) {
 int ival = 123;

 emitter_begin(emitter);
 emitter_json_key(emitter, "dict");
 emitter_json_object_begin(emitter);
 emitter_json_key(emitter, "arr");
 emitter_json_array_begin(emitter);
 emitter_json_object_begin(emitter);
 emitter_json_kv(emitter, "foo", emitter_type_int, &ival);
 emitter_json_object_end(emitter);

 emitter_json_value(emitter, emitter_type_int, &ival);
 emitter_json_value(emitter, emitter_type_int, &ival);
 emitter_json_object_begin(emitter);
 emitter_json_kv(emitter, "bar", emitter_type_int, &ival);
 emitter_json_kv(emitter, "baz", emitter_type_int, &ival);
 emitter_json_object_end(emitter);
 emitter_json_array_end(emitter);
 emitter_json_object_end(emitter);
 emitter_end(emitter);
}
