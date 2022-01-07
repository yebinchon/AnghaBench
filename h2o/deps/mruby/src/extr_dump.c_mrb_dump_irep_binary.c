
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef int bin ;
typedef int FILE ;


 int FLAG_BYTEORDER_NONATIVE ;
 int MRB_DUMP_INVALID_ARGUMENT ;
 int MRB_DUMP_OK ;
 int MRB_DUMP_WRITE_FAULT ;
 int dump_flags (int ,int ) ;
 int dump_irep (int *,int *,int ,int **,size_t*) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int mrb_free (int *,int *) ;

int
mrb_dump_irep_binary(mrb_state *mrb, mrb_irep *irep, uint8_t flags, FILE* fp)
{
  uint8_t *bin = ((void*)0);
  size_t bin_size = 0;
  int result;

  if (fp == ((void*)0)) {
    return MRB_DUMP_INVALID_ARGUMENT;
  }

  result = dump_irep(mrb, irep, dump_flags(flags, FLAG_BYTEORDER_NONATIVE), &bin, &bin_size);
  if (result == MRB_DUMP_OK) {
    if (fwrite(bin, sizeof(bin[0]), bin_size, fp) != bin_size) {
      result = MRB_DUMP_WRITE_FAULT;
    }
  }

  mrb_free(mrb, bin);
  return result;
}
