
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;


 unsigned long EFAULT ;
 int ENOMEM ;
 int GFP_USER ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 unsigned long callback_getenv (unsigned long,char*,int ) ;
 int free_page (unsigned long) ;
 int seq_write (struct seq_file*,char*,unsigned long) ;

__attribute__((used)) static int srm_env_proc_show(struct seq_file *m, void *v)
{
 unsigned long ret;
 unsigned long id = (unsigned long)m->private;
 char *page;

 page = (char *)__get_free_page(GFP_USER);
 if (!page)
  return -ENOMEM;

 ret = callback_getenv(id, page, PAGE_SIZE);

 if ((ret >> 61) == 0) {
  seq_write(m, page, ret);
  ret = 0;
 } else
  ret = -EFAULT;
 free_page((unsigned long)page);
 return ret;
}
