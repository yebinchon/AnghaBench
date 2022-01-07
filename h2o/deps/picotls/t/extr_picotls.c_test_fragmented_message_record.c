
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_ptls_message_emitter_t {int dummy; } ;
typedef int ptls_t ;
struct TYPE_6__ {int len; int base; } ;
typedef TYPE_2__ ptls_iovec_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_7__ {size_t count; TYPE_1__* vec; } ;
struct TYPE_5__ {int is_end_of_record; int len; int buf; } ;


 int memcpy (int ,int ,int ) ;
 TYPE_4__ test_fragmented_message_queue ;

__attribute__((used)) static int test_fragmented_message_record(ptls_t *tls, struct st_ptls_message_emitter_t *emitter, ptls_iovec_t message,
                                          int is_end_of_record, ptls_handshake_properties_t *properties)
{
    memcpy(test_fragmented_message_queue.vec[test_fragmented_message_queue.count].buf, message.base, message.len);
    test_fragmented_message_queue.vec[test_fragmented_message_queue.count].len = message.len;
    test_fragmented_message_queue.vec[test_fragmented_message_queue.count].is_end_of_record = is_end_of_record;
    ++test_fragmented_message_queue.count;

    return 0;
}
