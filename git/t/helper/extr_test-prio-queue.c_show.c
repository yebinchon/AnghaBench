
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int*) ;
 int printf (char*,...) ;

__attribute__((used)) static void show(int *v)
{
 if (!v)
  printf("NULL\n");
 else
  printf("%d\n", *v);
 free(v);
}
