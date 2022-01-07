
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc_struct {int dummy; } ;
typedef scalar_t__ pc_t ;


 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;

pc_t pc_new() {
  pc_t self = malloc(sizeof(struct pc_struct));
  if (self) {
    memset(self, 0, sizeof(struct pc_struct));
  }
  return self;
}
