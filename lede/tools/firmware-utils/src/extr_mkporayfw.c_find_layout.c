
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_layout {int * id; } ;


 struct flash_layout* layouts ;
 scalar_t__ strcasecmp (char*,int *) ;

__attribute__((used)) static struct flash_layout *find_layout(char *id)
{
 struct flash_layout *ret;
 struct flash_layout *l;

 ret = ((void*)0);
 for (l = layouts; l->id != ((void*)0); l++){
  if (strcasecmp(id, l->id) == 0) {
   ret = l;
   break;
  }
 };

 return ret;
}
