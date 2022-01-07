
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;



int uv_cpumask_size(void) {
  return (int)(sizeof(DWORD_PTR) * 8);
}
