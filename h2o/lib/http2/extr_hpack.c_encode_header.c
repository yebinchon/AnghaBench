
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int h2o_hpack_header_table_t ;
struct TYPE_4__ {int dont_compress; } ;
struct TYPE_5__ {TYPE_1__ flags; int value; int name; } ;
typedef TYPE_2__ h2o_header_t ;


 int * do_encode_header (int *,int *,int ,int *,int ) ;

__attribute__((used)) static uint8_t *encode_header(h2o_hpack_header_table_t *header_table, uint8_t *dst, const h2o_header_t *header)
{
    return do_encode_header(header_table, dst, header->name, &header->value, header->flags.dont_compress);
}
