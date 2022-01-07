
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;


 int ERR (char*) ;

__attribute__((used)) static u_int8_t getCheckSum(char* data, int len) {
 u_int8_t new = 0;

 if (!data) {
  ERR("Invalid pointer provided!\n");
  return 0;
 }

 for (int i = 0; i < len; i++) {
  new += data[i];
 }

 return new;
}
