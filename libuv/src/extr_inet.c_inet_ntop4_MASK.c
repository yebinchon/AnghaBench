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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int UV_ENOSPC ; 
 int UV__INET_ADDRSTRLEN ; 
 int FUNC0 (char*,int,char const*,unsigned char const,unsigned char const,unsigned char const,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(const unsigned char *src, char *dst, size_t size) {
  static const char fmt[] = "%u.%u.%u.%u";
  char tmp[UV__INET_ADDRSTRLEN];
  int l;

  l = FUNC0(tmp, sizeof(tmp), fmt, src[0], src[1], src[2], src[3]);
  if (l <= 0 || (size_t) l >= size) {
    return UV_ENOSPC;
  }
  FUNC1(dst, tmp, size);
  return 0;
}