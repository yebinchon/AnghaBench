
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __cpcmd (char const*,char*,int,int*) ;
 int cpcmd_lock ;
 scalar_t__ is_vmalloc_or_module_addr (char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char*,int) ;
 int pr_warn (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cpcmd(const char *cmd, char *response, int rlen, int *response_code)
{
 unsigned long flags;
 char *lowbuf;
 int len;

 if (is_vmalloc_or_module_addr(response)) {
  lowbuf = kmalloc(rlen, GFP_KERNEL);
  if (!lowbuf) {
   pr_warn("The cpcmd kernel function failed to allocate a response buffer\n");
   return -ENOMEM;
  }
  spin_lock_irqsave(&cpcmd_lock, flags);
  len = __cpcmd(cmd, lowbuf, rlen, response_code);
  spin_unlock_irqrestore(&cpcmd_lock, flags);
  memcpy(response, lowbuf, rlen);
  kfree(lowbuf);
 } else {
  spin_lock_irqsave(&cpcmd_lock, flags);
  len = __cpcmd(cmd, response, rlen, response_code);
  spin_unlock_irqrestore(&cpcmd_lock, flags);
 }
 return len;
}
