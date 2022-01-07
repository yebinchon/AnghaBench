
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_decoders ;
 int * allocated_list_decoders ;
 int zfree_list_decoder (int ) ;

__attribute__((used)) static void free_all_list_decoders (void) {
  int i;
  for (i = 0; i < Q_decoders; i++) { zfree_list_decoder (allocated_list_decoders[i]); }
  Q_decoders = 0;
}
