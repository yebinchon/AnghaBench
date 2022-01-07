
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emitter_t ;


 int emitter_begin (int *) ;
 int emitter_dict_begin (int *,char*,char*) ;
 int emitter_dict_end (int *) ;
 int emitter_end (int *) ;
 int emitter_kv (int *,char*,char*,int ,int*) ;
 int emitter_type_int ;

__attribute__((used)) static void emit_nested_dict(emitter_t *emitter) {
 int val = 123;
 emitter_begin(emitter);
 emitter_dict_begin(emitter, "json1", "Dict 1");
 emitter_dict_begin(emitter, "json2", "Dict 2");
 emitter_kv(emitter, "primitive", "A primitive", emitter_type_int, &val);
 emitter_dict_end(emitter);
 emitter_dict_begin(emitter, "json3", "Dict 3");
 emitter_dict_end(emitter);
 emitter_dict_end(emitter);
 emitter_dict_begin(emitter, "json4", "Dict 4");
 emitter_kv(emitter, "primitive", "Another primitive",
     emitter_type_int, &val);
 emitter_dict_end(emitter);
 emitter_end(emitter);
}
