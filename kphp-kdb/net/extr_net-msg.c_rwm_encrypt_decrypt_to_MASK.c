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
struct vk_aes_ctx {int dummy; } ;
struct rwm_encrypt_decrypt_tmp {void (* crypt ) (struct vk_aes_ctx*,void const*,void*,int,unsigned char*) ;int buf_left; unsigned char* iv; int left; struct vk_aes_ctx* ctx; struct raw_message* raw; int /*<<< orphan*/  bp; } ;
struct raw_message {int total_bytes; scalar_t__ last_offset; int first_offset; struct msg_part* last; struct msg_part* first; } ;
struct msg_part {scalar_t__ offset; TYPE_2__* part; scalar_t__ len; struct msg_part* next; } ;
struct msg_buffer {int dummy; } ;
struct TYPE_4__ {int refcnt; TYPE_1__* chunk; } ;
struct TYPE_3__ {int buffer_size; } ;

/* Variables and functions */
 int MSG_STD_BUFFER ; 
 int RM_PREPEND_RESERVE ; 
 struct msg_buffer* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct raw_message*) ; 
 struct msg_part* FUNC3 (struct msg_part*,struct msg_buffer*) ; 
 int FUNC4 (struct raw_message*,int,void*,struct rwm_encrypt_decrypt_tmp*) ; 
 scalar_t__ rwm_process_encrypt_decrypt ; 

int FUNC5 (struct raw_message *raw, struct raw_message *res, int bytes, struct vk_aes_ctx *ctx, void (*crypt)(struct vk_aes_ctx *ctx, const void *src, void *dst, int l, unsigned char *iv), unsigned char *iv) {
  FUNC1 (bytes >= 0);
  if (bytes > raw->total_bytes) {
    bytes = raw->total_bytes;
  }
  bytes &= ~15;
  if (!bytes) {
    return 0;
  }
  if (res->last && (res->last->next || res->last->offset != res->last_offset)) {
    FUNC2 (res);
  }
  if (!res->last || res->last->part->refcnt != 1) {
    int l = res->last ? bytes : bytes + RM_PREPEND_RESERVE;
    struct msg_buffer *X = FUNC0 (res->last ? res->last->part : 0, l >= MSG_STD_BUFFER ? MSG_STD_BUFFER : l);
    struct msg_part *mp = FUNC3 (res->last, X);
    if (res->last) {
      res->last->next = mp;
      res->last = mp;
      res->last_offset = 0;
    } else {
      res->last = res->first = mp;
      res->last_offset = res->first_offset = mp->offset = RM_PREPEND_RESERVE;
      mp->len = 0;
    }
  }
  static struct rwm_encrypt_decrypt_tmp t;
  FUNC1 (!t.bp);
  t.crypt = crypt;
  t.buf_left = res->last->part->chunk->buffer_size - res->last_offset;
  t.raw = res;
  t.ctx = ctx;
  t.iv = iv;
  t.left = bytes;
  return FUNC4 (raw, bytes, (void *)rwm_process_encrypt_decrypt, &t);
}