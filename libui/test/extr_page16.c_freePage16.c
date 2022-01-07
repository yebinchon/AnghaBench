
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * img ;
 int m ;
 int uiFreeImage (int ) ;
 int uiFreeTableModel (int ) ;

void freePage16(void)
{
 uiFreeTableModel(m);
 uiFreeImage(img[1]);
 uiFreeImage(img[0]);
}
