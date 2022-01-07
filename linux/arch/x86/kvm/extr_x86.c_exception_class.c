
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXCPT_BENIGN ;
 int EXCPT_CONTRIBUTORY ;
 int EXCPT_PF ;






__attribute__((used)) static int exception_class(int vector)
{
 switch (vector) {
 case 130:
  return EXCPT_PF;
 case 133:
 case 128:
 case 131:
 case 129:
 case 132:
  return EXCPT_CONTRIBUTORY;
 default:
  break;
 }
 return EXCPT_BENIGN;
}
