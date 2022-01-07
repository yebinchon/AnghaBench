
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_dumpf (int ,int ,int) ;
 int stdout ;

void jv_dump(jv x, int flags) {
  jv_dumpf(x, stdout, flags);
}
