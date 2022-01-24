#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rwm_encrypt_decrypt_tmp {int buf_left; scalar_t__ left; int bp; void const* buf; int /*<<< orphan*/  iv; int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* crypt ) (int /*<<< orphan*/ ,void const*,scalar_t__,int,int /*<<< orphan*/ ) ;struct raw_message* raw; } ;
struct raw_message {int total_bytes; scalar_t__ last_offset; struct msg_part* last; } ;
struct msg_part {int len; TYPE_2__* part; struct msg_part* next; } ;
struct msg_buffer {TYPE_1__* chunk; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int buffer_size; } ;

/* Variables and functions */
 scalar_t__ MSG_STD_BUFFER ; 
 struct msg_buffer* FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void const*,void const*,int) ; 
 struct msg_part* FUNC2 (struct msg_part*,struct msg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,scalar_t__,int,int /*<<< orphan*/ ) ; 

void FUNC6 (struct rwm_encrypt_decrypt_tmp *x, const void *data, int len) {
  struct raw_message *res = x->raw;
  if (!x->buf_left) {
    struct msg_buffer *X = FUNC0 (res->last->part, x->left >= MSG_STD_BUFFER ? MSG_STD_BUFFER : x->left);
    struct msg_part *mp = FUNC2 (res->last, X);
    res->last->next = mp;
    res->last = mp;
    res->last_offset = 0;
    x->buf_left = X->chunk->buffer_size;
  }
  x->left -= len;
  if (x->bp) {
    if (len >= 16 - x->bp) {
      FUNC1 (x->buf + x->bp, data, 16 - x->bp);
      len -= 16 - x->bp;
      data += 16 - x->bp;
      x->bp = 0;      
      x->crypt (x->ctx, x->buf, res->last->part->data + res->last_offset, 16, x->iv);
      res->last->len += 16;
      res->last_offset += 16;
      res->total_bytes += 16;
      x->buf_left -= 16;
    } else {
      FUNC1 (x->buf + x->bp, data, len);
      x->bp += len;
      return;
    }
  }
  if (len & 15) {
    int l = len & ~15;
    FUNC1 (x->buf, data + l, len - l);
    x->bp = len - l;
    len = l;
  }
  while (1) {
    if (!x->buf_left) {
      struct msg_buffer *X = FUNC0 (res->last->part, x->left + len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : x->left + len);
      struct msg_part *mp = FUNC2 (res->last, X);
      res->last->next = mp;
      res->last = mp;
      res->last_offset = 0;
      x->buf_left = X->chunk->buffer_size;
    }
    if (len <= x->buf_left) {
      x->crypt (x->ctx, data, (res->last->part->data + res->last_offset), len, x->iv);
      res->last->len += len;
      res->last_offset += len;
      res->total_bytes += len;
      x->buf_left -= len;
      return;
    } else {
      int t = x->buf_left;
      x->crypt (x->ctx, data, res->last->part->data + res->last_offset, t, x->iv);
      res->last->len += t;
      res->last_offset += t;
      res->total_bytes += t;
      data += t;
      len -= t;
      x->buf_left -= t;
    }
  }
}