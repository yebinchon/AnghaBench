#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vk_aes_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ *) ; 

void FUNC1 (vk_aes_ctx_t *ctx, const unsigned char *in, unsigned char *out, int size, unsigned char iv[16], unsigned long long offset) {
  unsigned long long *p = (unsigned long long *) (iv + 8);
  const unsigned long long old_ctr_value = *p;
  (*p) += offset >> 4;
  union {
    unsigned char c[16];
    unsigned long long d[2];
  } u;
  int i = offset & 15, l;
  if (i) {
    FUNC0 (iv, u.c, &ctx->u.key);
    (*p)++;
    l = i + size;
    if (l > 16) {
      l = 16;
    }
    size -= l - i;
    do {
      *out++ = (*in++) ^ u.c[i++];
    } while (i < l);
  }
  const unsigned long long *I = (const unsigned long long *) in;
  unsigned long long *O = (unsigned long long *) out;
  int n = size >> 4;
  while (--n >= 0) {
    FUNC0 (iv, (unsigned char *) u.d, &ctx->u.key);
    (*p)++;
    *O++ = (*I++) ^ u.d[0];
    *O++ = (*I++) ^ u.d[1];
  }
  in = (const unsigned char *) I;
  out = (unsigned char *) O;
  l = size & 15;
  if (l) {
    FUNC0 (iv, u.c, &ctx->u.key);
    i = 0;
    do {
      *out++ = (*in++) ^ u.c[i++];
    } while (i < l);
  }
  *p = old_ctr_value;
}