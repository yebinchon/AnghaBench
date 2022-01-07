
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; } ;
struct TYPE_7__ {TYPE_2__ value; TYPE_1__* name; } ;
typedef TYPE_3__ h2o_header_t ;
struct TYPE_5__ {int len; } ;


 scalar_t__ calc_capacity (int ,int ) ;

__attribute__((used)) static size_t calc_headers_capacity(const h2o_header_t *headers, size_t num_headers)
{
    const h2o_header_t *header;
    size_t capacity = 0;
    for (header = headers; num_headers != 0; ++header, --num_headers)
        capacity += calc_capacity(header->name->len, header->value.len);
    return capacity;
}
