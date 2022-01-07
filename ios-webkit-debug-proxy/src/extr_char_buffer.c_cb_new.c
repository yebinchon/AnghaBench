
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_struct {int dummy; } ;
typedef scalar_t__ cb_t ;


 int malloc (int) ;
 int memset (scalar_t__,int ,int) ;

cb_t cb_new() {
  cb_t self = (cb_t)malloc(sizeof(struct cb_struct));
  if (self) {
    memset(self, 0, sizeof(struct cb_struct));
  }
  return self;
}
