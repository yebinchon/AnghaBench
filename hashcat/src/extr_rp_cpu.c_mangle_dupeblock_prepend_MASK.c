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

/* Variables and functions */
 int RP_PASSWORD_SIZE ; 
 int FUNC0 (char*,int,int,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2 (char arr[RP_PASSWORD_SIZE], int arr_len, int ulen)
{
  if (ulen > arr_len) return (arr_len);

  if ((arr_len + ulen) >= RP_PASSWORD_SIZE) return (arr_len);

  char cs[100] = { 0 };

  FUNC1 (cs, arr, ulen);

  int i;

  for (i = 0; i < ulen; i++)
  {
    char c = cs[i];

    arr_len = FUNC0 (arr, arr_len, i, c);
  }

  return (arr_len);
}