
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int refcnt; int num_double; int num_decimal; int * literal_data; } ;
typedef TYPE_2__ jvp_literal_number ;
struct TYPE_11__ {int * member_0; } ;
struct TYPE_13__ {TYPE_1__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_3__ jv ;
struct TYPE_14__ {int status; } ;
typedef TYPE_4__ decContext ;


 TYPE_4__* DEC_CONTEXT () ;
 int DEC_Conversion_syntax ;
 int JVP_FLAGS_NUMBER_LITERAL ;
 TYPE_3__ JV_INVALID ;
 int JV_NUMBER_SIZE_INIT ;
 int JV_REFCNT_INIT ;
 int NAN ;
 int decNumberFromString (int *,char const*,TYPE_4__*) ;
 int jv_mem_free (TYPE_2__*) ;
 TYPE_2__* jvp_literal_number_alloc (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static jv jvp_literal_number_new(const char * literal) {

  jvp_literal_number * n = jvp_literal_number_alloc(strlen(literal));

  n->refcnt = JV_REFCNT_INIT;
  n->literal_data = ((void*)0);
  decContext *ctx = DEC_CONTEXT();
  decNumberFromString(&n->num_decimal, literal, ctx);
  n->num_double = NAN;

  if (ctx->status & DEC_Conversion_syntax) {
    jv_mem_free(n);
    return JV_INVALID;
  }

  jv r = {JVP_FLAGS_NUMBER_LITERAL, 0, 0, JV_NUMBER_SIZE_INIT, {&n->refcnt}};
  return r;
}
