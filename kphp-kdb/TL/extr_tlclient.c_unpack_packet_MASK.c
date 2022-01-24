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
typedef  int uLongf ;
struct tl_compiler {int dummy; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 scalar_t__ GZIP_PACKED ; 
 scalar_t__* P ; 
 int PACKET_BUFFER_SIZE ; 
 int Z_BUF_ERROR ; 
 int Z_DATA_ERROR ; 
 int Z_MEM_ERROR ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct tl_compiler*,char*,...) ; 
 int FUNC3 (scalar_t__*,int const,char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int const,int) ; 

__attribute__((used)) static int FUNC5 (struct tl_compiler *C, int len, int **Q, int *qlen) {
  *Q = NULL;
  *qlen = 0;
  const int ilen = (len / 4) - 6;
  if (ilen <= 0) {
    return -1;
  }
  if (P[5] != GZIP_PACKED) {
    *Q = &P[5];
    *qlen = ilen;
    return 0;
  }
  char *s;
  int slen;
  int r = FUNC3 (&P[6], ilen - 1, &s, &slen, 0);
  FUNC4 (4, "ilen: %d, slen: %d\n", ilen, slen);
  if (r < 0) {
    return FUNC2 (C, "tl_fetch_string fail");
  }

  if (r != ilen -1) {
    return FUNC2 (C, "packet contains extra %d ints",  ilen - 1 - r);
  }

  FUNC0 ((void *) (s + slen) <= (void *) &P[len/4]);

  const int dlen = PACKET_BUFFER_SIZE - len;
  uLongf destLen = dlen;
  r = FUNC1 ((Bytef *) &P[len / 4], &destLen, (Bytef *) s, slen);
  if (Z_OK != r) {
    return FUNC2 (C, "uncompress (%p, %d, %p, %d) returns %s",
      &P[len / 4],
      dlen,
      s,
      slen,
      (r == Z_MEM_ERROR) ? "Z_MEM_ERROR" :
      (r == Z_BUF_ERROR) ? "Z_BUF_ERROR" :
      (r == Z_DATA_ERROR) ? "Z_DATA_ERROR" : "???");
    return -1;
  }

  if (destLen % 4) {
    return FUNC2 (C, "destLen(%d) isn't multiple of 4", (int) destLen);
  }

  *Q = &P[len / 4];
  *qlen = destLen / 4;
  return 1;
}