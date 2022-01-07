
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XBUFSIZE ;
 int free_pages (unsigned long,int) ;

__attribute__((used)) static void __testmgr_free_buf(char *buf[XBUFSIZE], int order)
{
 int i;

 for (i = 0; i < XBUFSIZE; i++)
  free_pages((unsigned long)buf[i], order);
}
