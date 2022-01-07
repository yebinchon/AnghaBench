
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tl_compiler {scalar_t__ magic; int flag_output_magic; TYPE_3__* hm_composite_typename; TYPE_2__** hm_combinator; TYPE_1__** hm_magic; int * expr; int tmp_error_buff; } ;
struct TYPE_6__ {int compute_hash; int compare; } ;
struct TYPE_5__ {int compute_hash; int compare; } ;
struct TYPE_4__ {int compute_hash; int compare; } ;


 scalar_t__ TL_COMPILER_INITIALIZED_MAGIC ;
 int TL_MIN_HASHMAP_SIZE ;
 int memset (struct tl_compiler*,int ,int) ;
 int tl_expression_combinator_hash_compare ;
 int tl_expression_combinator_hash_compute_hash ;
 int tl_expression_int_hash_compare ;
 int tl_expression_int_hash_compute_hash ;
 int tl_expression_right_name_hash_compare ;
 int tl_expression_right_name_hash_compute_hash ;
 void* tl_hashmap_alloc (int ) ;
 int tl_list_expressions_init (int *) ;
 int tl_string_buffer_init (int *) ;

void tl_compiler_init (struct tl_compiler *C) {
  int i;
  if (C->magic == TL_COMPILER_INITIALIZED_MAGIC) {
    return;
  }
  memset (C, 0, sizeof (*C));
  C->magic = TL_COMPILER_INITIALIZED_MAGIC;
  tl_string_buffer_init (&C->tmp_error_buff);
  for (i = 0; i < 2; i++) {
    tl_list_expressions_init (&C->expr[i]);
    C->hm_magic[i] = tl_hashmap_alloc (TL_MIN_HASHMAP_SIZE);
    C->hm_magic[i]->compare = tl_expression_int_hash_compare;
    C->hm_magic[i]->compute_hash = tl_expression_int_hash_compute_hash;
    C->hm_combinator[i] = tl_hashmap_alloc (TL_MIN_HASHMAP_SIZE);
    C->hm_combinator[i]->compare = tl_expression_combinator_hash_compare;
    C->hm_combinator[i]->compute_hash = tl_expression_combinator_hash_compute_hash;
  }
  C->hm_composite_typename = tl_hashmap_alloc (TL_MIN_HASHMAP_SIZE);
  C->hm_composite_typename->compare = tl_expression_right_name_hash_compare;
  C->hm_composite_typename->compute_hash = tl_expression_right_name_hash_compute_hash;
  C->flag_output_magic = 1;
}
