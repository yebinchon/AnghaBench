#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct random_gather_extra {int bytes; int limit; scalar_t__ hex; } ;
struct gather_entry {int res_bytes; int* data; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int* A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* R ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

int FUNC9 (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  struct random_gather_extra *extra = E;
  int i, j, bi = 0;
  for (i = 1; i < tot_num; i++) {
    if (data[bi].res_bytes < data[i].res_bytes) {
      bi = i;
    }
  }
  int max_bytes = data[bi].res_bytes, *r, *w;
  if (max_bytes <= 64) {
    return 0;
  }
  FUNC6 (R, 0, (max_bytes + 3) & -4);

  for (i = 0; i < tot_num; i++) {
    r = data[i].data;
    w = (int *) R;
    for (j = 0; j < data[i].res_bytes; j += 4) {
      *w++ ^= *r++;
    }
  }

  EVP_CIPHER_CTX e;
  FUNC1 (&e);
  FUNC3 (&e, FUNC5(), NULL, R, R + 32);
  int c_len, f_len;

  if (!FUNC4 (&e, A, &c_len, R + 64, max_bytes - 64)) {
    FUNC8 (1, "EVP_EncryptUpdate fail.\n");
    FUNC0 (&e);
    return 0;
  }

  if (!FUNC2 (&e, A + c_len, &f_len)) {
    FUNC8 (1, "EVP_EncryptFinal_ex fail.\n");
    FUNC0 (&e);
    return 0;
  }
  FUNC0 (&e);
  f_len += c_len;

  int res = f_len < data[0].res_bytes ? f_len : data[0].res_bytes;
  if (res > extra->bytes) {
    res = extra->bytes;
  }

  w = (int *) A;
  r = data[0].data;
  for (i = 0; i < res; i += 4) {
    *w++ ^= *r++;
  }

  if (extra->hex) {
    static const char hcyf[16] = "0123456789abcdef";
    for (i = 0; i < res; i++) {
      R[2*i] = hcyf[(A[i] >> 4) & 15];
      R[2*i+1] = hcyf[A[i] & 15];
    }
    res *= 2;
    if (res > extra->limit) {
      res = extra->limit;
    }
    return FUNC7 (c, key, (char *) R, res);
  }
  return FUNC7 (c, key, (char *) A, res);
}