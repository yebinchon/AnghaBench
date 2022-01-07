
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiImage ;
struct TYPE_2__ {int stride; int height; int width; int data; int name; } ;


 TYPE_1__* files ;
 scalar_t__ strcmp (char const*,int ) ;
 int uiImageAppend (int *,int ,int ,int ,int ) ;

void appendImageNamed(uiImage *img, const char *name)
{
 int i;

 i = 0;
 for (;;) {
  if (strcmp(name, files[i].name) == 0) {
   uiImageAppend(img, files[i].data, files[i].width, files[i].height, files[i].stride);
   return;
  }
  i++;
 }
}
