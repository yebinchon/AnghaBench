
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLOGBUF_MSGMAX ;
 unsigned long MLOGBUF_SIZE ;
 char* mlogbuf ;
 unsigned long mlogbuf_end ;
 int mlogbuf_rlock ;
 unsigned long mlogbuf_start ;
 scalar_t__ mlogbuf_timestamp ;
 int printk (char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ia64_mlogbuf_dump(void)
{
 char temp_buf[MLOGBUF_MSGMAX];
 char *p;
 unsigned long index;
 unsigned long flags;
 unsigned int printed_len;


 while (mlogbuf_start != mlogbuf_end) {
  temp_buf[0] = '\0';
  p = temp_buf;
  printed_len = 0;

  spin_lock_irqsave(&mlogbuf_rlock, flags);

  index = mlogbuf_start;
  while (index != mlogbuf_end) {
   *p = mlogbuf[index];
   index = (index + 1) % MLOGBUF_SIZE;
   if (!*p)
    break;
   p++;
   if (++printed_len >= MLOGBUF_MSGMAX - 1)
    break;
  }
  *p = '\0';
  if (temp_buf[0])
   printk("%s", temp_buf);
  mlogbuf_start = index;

  mlogbuf_timestamp = 0;
  spin_unlock_irqrestore(&mlogbuf_rlock, flags);
 }
}
