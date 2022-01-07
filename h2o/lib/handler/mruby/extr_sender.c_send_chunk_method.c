
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int inflight; } ;
struct TYPE_10__ {scalar_t__ bytes_left; int final_sent; } ;
struct st_h2o_mruby_callback_sender_t {TYPE_5__* receiving; TYPE_4__ sending; TYPE_1__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_11__ {scalar_t__ sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_14__ {int * base; } ;
struct TYPE_13__ {scalar_t__ bytes; scalar_t__ size; } ;


 int E_RUNTIME_ERROR ;
 scalar_t__ SIZE_MAX ;
 int check_precond (int *,TYPE_2__*) ;
 TYPE_7__ h2o_buffer_try_reserve (TYPE_5__**,scalar_t__) ;
 TYPE_2__* h2o_mruby_get_generator (int *,int ) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_2__*,TYPE_4__*,TYPE_5__**,int ) ;
 int memcpy (scalar_t__,char const*,scalar_t__) ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_exc_raise (int *,int ) ;
 int mrb_get_args (int *,char*,char const**,scalar_t__*,int *) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value send_chunk_method(mrb_state *mrb, mrb_value self)
{
    const char *s;
    mrb_int len;
    mrb_value gen;


    mrb_get_args(mrb, "so", &s, &len, &gen);

    h2o_mruby_generator_t *generator = h2o_mruby_get_generator(mrb, gen);

    {
        mrb_value exc = check_precond(mrb, generator);
        if (!mrb_nil_p(exc))
            mrb_exc_raise(mrb, exc);
    }


    if (len != 0) {
        struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
        if (sender->super.bytes_left != SIZE_MAX && sender->super.bytes_left < len)
            len = sender->super.bytes_left;
        if (len != 0) {
            if ((h2o_buffer_try_reserve(&sender->receiving, len)).base == ((void*)0)) {
                mrb_value exc = mrb_exc_new_str_lit(mrb, E_RUNTIME_ERROR, "failed to allocate memory");
                mrb_exc_raise(mrb, exc);
            }
            memcpy(sender->receiving->bytes + sender->receiving->size, s, len);
            sender->receiving->size += len;
            if (!sender->super.final_sent && !sender->sending.inflight)
                h2o_mruby_sender_do_send_buffer(generator, &sender->sending, &sender->receiving, 0);
        }
    }

    return mrb_nil_value();
}
