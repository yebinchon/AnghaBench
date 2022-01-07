
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcre_uint8 ;
typedef unsigned int pcre_uint32 ;
struct TYPE_3__ {int* cbits; } ;
typedef TYPE_1__ compile_data ;



__attribute__((used)) static void
set_nottype_bits(pcre_uint8 *start_bits, int cbit_type, unsigned int table_limit,
  compile_data *cd)
{
register pcre_uint32 c;
for (c = 0; c < table_limit; c++) start_bits[c] |= ~cd->cbits[c+cbit_type];



}
