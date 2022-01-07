
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;



__attribute__((used)) static void reverse_elements(void **dst, ssize_t start, ssize_t end)
{
 while (start < end) {
  void *tmp = dst[start];
  dst[start] = dst[end];
  dst[end] = tmp;

  start++;
  end--;
 }
}
