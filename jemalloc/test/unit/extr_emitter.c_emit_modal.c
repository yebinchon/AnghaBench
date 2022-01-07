
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emitter_t ;


 int emitter_begin (int *) ;
 int emitter_dict_begin (int *,char*,char*) ;
 int emitter_dict_end (int *) ;
 int emitter_end (int *) ;
 int emitter_json_key (int *,char*) ;
 int emitter_json_kv (int *,char*,int ,int*) ;
 int emitter_json_object_begin (int *) ;
 int emitter_json_object_end (int *) ;
 int emitter_kv (int *,char*,char*,int ,int*) ;
 int emitter_table_dict_begin (int *,char*) ;
 int emitter_table_dict_end (int *) ;
 int emitter_table_kv (int *,char*,int ,int*) ;
 int emitter_type_int ;

__attribute__((used)) static void
emit_modal(emitter_t *emitter) {
 int val = 123;
 emitter_begin(emitter);
 emitter_dict_begin(emitter, "j0", "T0");
 emitter_json_key(emitter, "j1");
 emitter_json_object_begin(emitter);
 emitter_kv(emitter, "i1", "I1", emitter_type_int, &val);
 emitter_json_kv(emitter, "i2", emitter_type_int, &val);
 emitter_table_kv(emitter, "I3", emitter_type_int, &val);
 emitter_table_dict_begin(emitter, "T1");
 emitter_kv(emitter, "i4", "I4", emitter_type_int, &val);
 emitter_json_object_end(emitter);
 emitter_kv(emitter, "i5", "I5", emitter_type_int, &val);
 emitter_table_dict_end(emitter);
 emitter_kv(emitter, "i6", "I6", emitter_type_int, &val);
 emitter_dict_end(emitter);
 emitter_end(emitter);
}
