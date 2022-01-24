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
struct connection {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct connection*,char*,int,int,int,int,int) ; 
 int FUNC1 (char*,char**,int) ; 

int FUNC2 (int op, struct connection *c, char *str, int len) {
  char *key, *ptr;
  int key_len, flags, expire, bytes, noreply;

  while (*str == ' ') str++;
  key = str;
  while (*str > ' ') str++;
  key_len = str - key;
  if (!key_len || *str != ' ') return -1;

  flags = FUNC1 (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  expire = FUNC1 (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  bytes = FUNC1 (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  noreply = FUNC1 (str, &ptr, 10);
  if (ptr == str) { noreply = 0; } else { str = ptr; }

  while (*str == ' ') str++;
  if (*str) return -1;

  return FUNC0 (op, c, key, key_len, flags, expire, bytes, noreply);
}