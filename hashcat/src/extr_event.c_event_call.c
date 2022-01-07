
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* event ) (int const,TYPE_1__*,void const*,size_t const) ;TYPE_2__* event_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {void const** old_buf; size_t* old_len; int mux_event; } ;
typedef TYPE_2__ event_ctx_t ;






 int MAX_OLD_EVENTS ;
 size_t MIN (size_t const,size_t const) ;
 int hc_thread_mutex_lock (int ) ;
 int hc_thread_mutex_unlock (int ) ;
 int memcpy (void const*,void const*,size_t) ;
 int stub1 (int const,TYPE_1__*,void const*,size_t const) ;

void event_call (const u32 id, hashcat_ctx_t *hashcat_ctx, const void *buf, const size_t len)
{
  event_ctx_t *event_ctx = hashcat_ctx->event_ctx;

  bool is_log = 0;

  switch (id)
  {
    case 129: is_log = 1; break;
    case 128: is_log = 1; break;
    case 130: is_log = 1; break;
    case 131: is_log = 1; break;
  }

  if (is_log == 0)
  {
    hc_thread_mutex_lock (event_ctx->mux_event);
  }

  hashcat_ctx->event (id, hashcat_ctx, buf, len);

  if (is_log == 0)
  {
    hc_thread_mutex_unlock (event_ctx->mux_event);
  }



  if (is_log == 0)
  {
    for (int i = MAX_OLD_EVENTS - 1; i >= 1; i--)
    {
      memcpy (event_ctx->old_buf[i], event_ctx->old_buf[i - 1], event_ctx->old_len[i - 1]);

      event_ctx->old_len[i] = event_ctx->old_len[i - 1];
    }

    size_t copy_len = 0;

    if (buf)
    {


      const size_t max_buf_len = sizeof (event_ctx->old_buf[0]);

      copy_len = MIN (len, max_buf_len - 1);

      memcpy (event_ctx->old_buf[0], buf, copy_len);
    }

    event_ctx->old_len[0] = copy_len;
  }
}
