
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collection {int num; long long* A; } ;


 int MAX_C_NUM ;

__attribute__((used)) static void cAdd (struct collection *C, int item, int owner) {
  long long x = (unsigned) item + (((long long) owner) << 32);
  int i;
  for (i = 0; i < C->num; i++) {
    if (C->A[i] == x) {
      return;
    }
  }
  if (C->num < MAX_C_NUM) {
    C->A[C->num++] = x;
  }
}
