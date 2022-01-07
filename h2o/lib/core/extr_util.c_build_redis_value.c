
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int BASE64_LENGTH (int ) ;
 int h2o_base64_encode (int ,int ,int ,int) ;
 int h2o_mem_alloc (int ) ;

__attribute__((used)) static h2o_iovec_t build_redis_value(h2o_iovec_t session_data)
{
    h2o_iovec_t value;
    value.base = h2o_mem_alloc(BASE64_LENGTH(session_data.len));
    value.len = h2o_base64_encode(value.base, session_data.base, session_data.len, 1);
    return value;
}
