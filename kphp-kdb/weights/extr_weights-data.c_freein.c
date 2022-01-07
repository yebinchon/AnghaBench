
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Buff ;
 int free (int ) ;
 int rptr ;
 int * wptr ;

__attribute__((used)) static void freein (void) {
  if (Buff) {
    free (Buff);
    Buff = rptr = wptr = ((void*)0);
  }
}
