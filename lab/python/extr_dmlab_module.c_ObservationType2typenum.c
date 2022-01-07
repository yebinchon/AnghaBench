
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EnvCApi_ObservationType ;





 int NPY_DOUBLE ;
 int NPY_UINT8 ;

__attribute__((used)) static int ObservationType2typenum(EnvCApi_ObservationType type) {
  switch (type) {
    case 129:
      return NPY_DOUBLE;
    case 130:
      return NPY_UINT8;
    case 128:
    default:
      return -1;
  }
}
