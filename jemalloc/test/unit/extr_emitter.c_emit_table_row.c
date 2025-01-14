
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int emitter_t ;
typedef int emitter_row_t ;
struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_7__ {int member_1; char* str_val; int int_val; int bool_val; void* type; TYPE_2__ member_4; TYPE_1__ member_3; void* member_2; int member_0; } ;
typedef TYPE_3__ emitter_col_t ;


 int emitter_begin (int *) ;
 int emitter_col_init (TYPE_3__*,int *) ;
 int emitter_end (int *) ;
 int emitter_justify_left ;
 int emitter_justify_right ;
 int emitter_row_init (int *) ;
 int emitter_table_row (int *,int *) ;
 void* emitter_type_bool ;
 void* emitter_type_int ;
 void* emitter_type_string ;
 void* emitter_type_title ;

__attribute__((used)) static void
emit_table_row(emitter_t *emitter) {
 emitter_begin(emitter);
 emitter_row_t row;
 emitter_col_t abc = {emitter_justify_left, 10, emitter_type_title, {0}, {0, 0}};
 abc.str_val = "ABC title";
 emitter_col_t def = {emitter_justify_right, 15, emitter_type_title, {0}, {0, 0}};
 def.str_val = "DEF title";
 emitter_col_t ghi = {emitter_justify_right, 5, emitter_type_title, {0}, {0, 0}};
 ghi.str_val = "GHI";

 emitter_row_init(&row);
 emitter_col_init(&abc, &row);
 emitter_col_init(&def, &row);
 emitter_col_init(&ghi, &row);

 emitter_table_row(emitter, &row);

 abc.type = emitter_type_int;
 def.type = emitter_type_bool;
 ghi.type = emitter_type_int;

 abc.int_val = 123;
 def.bool_val = 1;
 ghi.int_val = 456;
 emitter_table_row(emitter, &row);

 abc.int_val = 789;
 def.bool_val = 0;
 ghi.int_val = 1011;
 emitter_table_row(emitter, &row);

 abc.type = emitter_type_string;
 abc.str_val = "a string";
 def.bool_val = 0;
 ghi.type = emitter_type_title;
 ghi.str_val = "ghi";
 emitter_table_row(emitter, &row);

 emitter_end(emitter);
}
