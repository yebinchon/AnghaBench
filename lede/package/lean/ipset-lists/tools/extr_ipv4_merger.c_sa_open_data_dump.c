
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa_open_data {size_t tmp_length; TYPE_1__* tmp_base; } ;
struct TYPE_2__ {int end; int start; } ;


 char* ipv4_hltos (int ,char*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void sa_open_data_dump(struct sa_open_data *od)
{
 size_t i;
 char s1[20], s2[20];

 for (i = 0; i < od->tmp_length; i++) {
  printf("%s-%s\n", ipv4_hltos(od->tmp_base[i].start, s1),
   ipv4_hltos(od->tmp_base[i].end, s2));
 }
}
