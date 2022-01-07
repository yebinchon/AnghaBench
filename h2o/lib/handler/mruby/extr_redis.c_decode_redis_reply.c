
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; size_t elements; int len; int str; int integer; struct TYPE_3__** element; } ;
typedef TYPE_1__ redisReply ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
 int assert (int) ;
 int get_error_class (int *,char*) ;
 int mrb_ary_new_capa (int *,size_t) ;
 int mrb_ary_set (int *,int ,size_t,int ) ;
 int mrb_fixnum_value (size_t) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_obj_value (int ) ;
 int mrb_str_new (int *,int ,int ) ;

__attribute__((used)) static mrb_value decode_redis_reply(mrb_state *mrb, redisReply *reply, mrb_value command)
{
    mrb_value decoded;

    switch (reply->type) {
    case 128:
    case 129:
        decoded = mrb_str_new(mrb, reply->str, reply->len);
        break;
    case 133:
        decoded = mrb_ary_new_capa(mrb, (mrb_int)reply->elements);
        mrb_int i;
        for (i = 0; i != reply->elements; ++i)
            mrb_ary_set(mrb, decoded, i, decode_redis_reply(mrb, reply->element[i], command));
        break;
    case 131:
        decoded = mrb_fixnum_value((mrb_int)reply->integer);
        break;
    case 130:
        decoded = mrb_nil_value();
        break;
    case 132: {
        mrb_value error_klass = mrb_obj_value(get_error_class(mrb, "CommandError"));
        decoded = mrb_funcall(mrb, error_klass, "new", 2, mrb_str_new(mrb, reply->str, reply->len), command);
    } break;
    default:
        assert(!"FIXME");
    }

    return decoded;
}
