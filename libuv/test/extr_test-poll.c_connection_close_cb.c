
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_handle_t ;
struct TYPE_6__ {scalar_t__ open_handles; scalar_t__ read; scalar_t__ sent; scalar_t__ is_server_connection; } ;
typedef TYPE_2__ connection_context_t ;


 int ASSERT (int) ;
 scalar_t__ DUPLEX ;
 scalar_t__ TRANSFER_BYTES ;
 int closed_connections ;
 int free (TYPE_2__*) ;
 scalar_t__ test_mode ;

__attribute__((used)) static void connection_close_cb(uv_handle_t* handle) {
  connection_context_t* context = (connection_context_t*) handle->data;

  if (--context->open_handles == 0) {
    if (test_mode == DUPLEX || context->is_server_connection) {
      ASSERT(context->read == TRANSFER_BYTES);
    } else {
      ASSERT(context->read == 0);
    }

    if (test_mode == DUPLEX || !context->is_server_connection) {
      ASSERT(context->sent == TRANSFER_BYTES);
    } else {
      ASSERT(context->sent == 0);
    }

    closed_connections++;

    free(context);
  }
}
