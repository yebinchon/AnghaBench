
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int alloc_size; } ;
typedef TYPE_1__ secp256k1_scratch_space ;
struct TYPE_17__ {int error_callback; } ;
typedef TYPE_2__ secp256k1_context ;
typedef int local_scratch ;
typedef int int32_t ;


 int ALIGNMENT ;
 int CHECK (int) ;
 int SECP256K1_CONTEXT_NONE ;
 int counting_illegal_callback_fn ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__* secp256k1_context_create (int ) ;
 int secp256k1_context_destroy (TYPE_2__*) ;
 int secp256k1_context_set_error_callback (TYPE_2__*,int ,int*) ;
 int secp256k1_context_set_illegal_callback (TYPE_2__*,int ,int*) ;
 int * secp256k1_scratch_alloc (int *,TYPE_1__*,int) ;
 int secp256k1_scratch_apply_checkpoint (int *,TYPE_1__*,size_t) ;
 size_t secp256k1_scratch_checkpoint (int *,TYPE_1__*) ;
 int secp256k1_scratch_max_allocation (int *,TYPE_1__*,int) ;
 TYPE_1__* secp256k1_scratch_space_create (TYPE_2__*,int) ;
 int secp256k1_scratch_space_destroy (TYPE_2__*,TYPE_1__*) ;

void run_scratch_tests(void) {
    const size_t adj_alloc = ((500 + ALIGNMENT - 1) / ALIGNMENT) * ALIGNMENT;

    int32_t ecount = 0;
    size_t checkpoint;
    size_t checkpoint_2;
    secp256k1_context *none = secp256k1_context_create(SECP256K1_CONTEXT_NONE);
    secp256k1_scratch_space *scratch;
    secp256k1_scratch_space local_scratch;


    secp256k1_context_set_illegal_callback(none, counting_illegal_callback_fn, &ecount);
    secp256k1_context_set_error_callback(none, counting_illegal_callback_fn, &ecount);

    scratch = secp256k1_scratch_space_create(none, 1000);
    CHECK(scratch != ((void*)0));
    CHECK(ecount == 0);


    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 0) == 1000);
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 1) == 1000 - (ALIGNMENT - 1));
    CHECK(scratch->alloc_size == 0);
    CHECK(scratch->alloc_size % ALIGNMENT == 0);


    checkpoint = secp256k1_scratch_checkpoint(&none->error_callback, scratch);
    CHECK(secp256k1_scratch_alloc(&none->error_callback, scratch, 500) != ((void*)0));
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 0) == 1000 - adj_alloc);
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 1) == 1000 - adj_alloc - (ALIGNMENT - 1));
    CHECK(scratch->alloc_size != 0);
    CHECK(scratch->alloc_size % ALIGNMENT == 0);


    CHECK(secp256k1_scratch_alloc(&none->error_callback, scratch, 500) == ((void*)0));
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 0) == 1000 - adj_alloc);
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 1) == 1000 - adj_alloc - (ALIGNMENT - 1));
    CHECK(scratch->alloc_size != 0);
    CHECK(scratch->alloc_size % ALIGNMENT == 0);


    secp256k1_scratch_apply_checkpoint(&none->error_callback, scratch, checkpoint);
    CHECK(scratch->alloc_size == 0);
    CHECK(secp256k1_scratch_max_allocation(&none->error_callback, scratch, 0) == 1000);
    CHECK(secp256k1_scratch_alloc(&none->error_callback, scratch, 500) != ((void*)0));
    CHECK(scratch->alloc_size != 0);


    checkpoint_2 = secp256k1_scratch_checkpoint(&none->error_callback, scratch);
    secp256k1_scratch_apply_checkpoint(&none->error_callback, scratch, checkpoint);
    CHECK(ecount == 0);
    secp256k1_scratch_apply_checkpoint(&none->error_callback, scratch, checkpoint_2);
    CHECK(ecount == 1);
    secp256k1_scratch_apply_checkpoint(&none->error_callback, scratch, (size_t) -1);
    CHECK(ecount == 2);


    secp256k1_scratch_space_destroy(none, scratch);
    memset(&local_scratch, 0, sizeof(local_scratch));
    scratch = &local_scratch;
    CHECK(!secp256k1_scratch_max_allocation(&none->error_callback, scratch, 0));
    CHECK(ecount == 3);
    CHECK(secp256k1_scratch_alloc(&none->error_callback, scratch, 500) == ((void*)0));
    CHECK(ecount == 4);
    secp256k1_scratch_space_destroy(none, scratch);
    CHECK(ecount == 5);


    secp256k1_scratch_space_destroy(none, ((void*)0));
    secp256k1_context_destroy(none);
}
