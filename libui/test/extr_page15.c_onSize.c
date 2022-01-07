
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int printf (char*) ;
 int updatesize (int *) ;

void onSize(uiWindow *w, void *data)
{
 printf("size\n");
 updatesize(w);
}
