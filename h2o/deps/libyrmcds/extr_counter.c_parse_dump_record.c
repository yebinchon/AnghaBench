
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yrmcds_error ;
struct TYPE_5__ {int body_length; int name_length; scalar_t__ body; scalar_t__ name; void* max_consumption; void* current_consumption; } ;
typedef TYPE_1__ yrmcds_cnt_response ;
struct TYPE_6__ {int invalid; } ;
typedef TYPE_2__ yrmcds_cnt ;


 int YRMCDS_OK ;
 int YRMCDS_PROTOCOL_ERROR ;
 int ntoh16 (scalar_t__) ;
 void* ntoh32 (scalar_t__) ;

__attribute__((used)) static yrmcds_error
parse_dump_record(yrmcds_cnt* c, yrmcds_cnt_response* r) {
    if( r->body_length == 0 ) {

        return YRMCDS_OK;
    }
    if( r->body_length < 10 ) {
        c->invalid = 1;
        return YRMCDS_PROTOCOL_ERROR;
    }
    r->current_consumption = ntoh32(r->body);
    r->max_consumption = ntoh32(r->body + 4);
    r->name_length = ntoh16(r->body + 8);
    if( r->body_length < 10 + r->name_length ) {
        c->invalid = 1;
        return YRMCDS_PROTOCOL_ERROR;
    }
    r->name = r->body + 10;
    return YRMCDS_OK;
}
