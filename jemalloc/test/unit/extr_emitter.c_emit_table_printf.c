
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emitter_t ;


 int emitter_begin (int *) ;
 int emitter_end (int *) ;
 int emitter_table_printf (int *,char*,...) ;

__attribute__((used)) static void
emit_table_printf(emitter_t *emitter) {
 emitter_begin(emitter);
 emitter_table_printf(emitter, "Table note 1\n");
 emitter_table_printf(emitter, "Table note 2 %s\n",
     "with format string");
 emitter_end(emitter);
}
