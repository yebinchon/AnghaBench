
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jvp_literal_number ;
typedef int decNumberUnit ;


 unsigned int DECDPUN ;
 int * jv_mem_alloc (int) ;

__attribute__((used)) static jvp_literal_number* jvp_literal_number_alloc(unsigned literal_length) {


  int units = ((literal_length+DECDPUN-1)/DECDPUN);

  jvp_literal_number* n = jv_mem_alloc(
    sizeof(jvp_literal_number)
    + sizeof(decNumberUnit) * units
  );

  return n;
}
