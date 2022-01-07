
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int XBUFSIZE ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static int testmgr_alloc_buf(char *buf[XBUFSIZE])
{
 int i;

 for (i = 0; i < XBUFSIZE; i++) {
  buf[i] = (void *)__get_free_page(GFP_KERNEL);
  if (!buf[i])
   goto err_free_buf;
 }

 return 0;

err_free_buf:
 while (i-- > 0)
  free_page((unsigned long)buf[i]);

 return -ENOMEM;
}
