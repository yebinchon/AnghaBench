
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rite_section_lineno_header {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int read_lineno_record (int *,int const*,int *,size_t*) ;

__attribute__((used)) static int
read_section_lineno(mrb_state *mrb, const uint8_t *bin, mrb_irep *irep)
{
  size_t len;

  len = 0;
  bin += sizeof(struct rite_section_lineno_header);


  return read_lineno_record(mrb, bin, irep, &len);
}
