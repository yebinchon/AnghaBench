
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_KIND (int ) ;





 int jvp_array_free (int ) ;
 int jvp_invalid_free (int ) ;
 int jvp_number_free (int ) ;
 int jvp_object_free (int ) ;
 int jvp_string_free (int ) ;

void jv_free(jv j) {
  switch(JVP_KIND(j)) {
    case 132:
      jvp_array_free(j);
      break;
    case 128:
      jvp_string_free(j);
      break;
    case 129:
      jvp_object_free(j);
      break;
    case 131:
      jvp_invalid_free(j);
      break;
    case 130:
      jvp_number_free(j);
      break;
  }
}
