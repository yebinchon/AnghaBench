
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * RH ;
 int free (int *) ;

__attribute__((used)) static void dns_record_hash_free (void) {
  if (RH) {
    free (RH);
    RH = ((void*)0);
  }
}
