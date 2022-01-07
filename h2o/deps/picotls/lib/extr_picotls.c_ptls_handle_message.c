
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_ptls_record_t {size_t member_2; void const* member_3; int member_1; int member_0; } ;
struct TYPE_8__ {int member_4; int member_3; int member_2; int * member_1; int * member_0; } ;
struct st_ptls_raw_message_emitter_t {size_t* member_2; int super; int member_1; TYPE_1__ member_0; } ;
struct TYPE_9__ {int enc; } ;
struct TYPE_10__ {TYPE_2__ traffic_protection; } ;
typedef TYPE_3__ ptls_t ;
typedef int ptls_handshake_properties_t ;
typedef int ptls_buffer_t ;


 int PTLS_ALERT_UNEXPECTED_MESSAGE ;
 int PTLS_CONTENT_TYPE_HANDSHAKE ;
 int SIZE_MAX ;
 int begin_raw_message ;
 int commit_raw_message ;
 int handle_handshake_message ;
 int handle_handshake_record (TYPE_3__*,int ,int *,struct st_ptls_record_t*,int *) ;
 size_t ptls_get_read_epoch (TYPE_3__*) ;
 int send_client_hello (TYPE_3__*,int *,int *,int *) ;

int ptls_handle_message(ptls_t *tls, ptls_buffer_t *sendbuf, size_t epoch_offsets[5], size_t in_epoch, const void *input,
                        size_t inlen, ptls_handshake_properties_t *properties)
{
    struct st_ptls_raw_message_emitter_t emitter = {
        {sendbuf, &tls->traffic_protection.enc, 0, begin_raw_message, commit_raw_message}, SIZE_MAX, epoch_offsets};
    struct st_ptls_record_t rec = {PTLS_CONTENT_TYPE_HANDSHAKE, 0, inlen, input};

    if (input == ((void*)0))
        return send_client_hello(tls, &emitter.super, properties, ((void*)0));

    if (ptls_get_read_epoch(tls) != in_epoch)
        return PTLS_ALERT_UNEXPECTED_MESSAGE;

    return handle_handshake_record(tls, handle_handshake_message, &emitter.super, &rec, properties);
}
