
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TPK_STR_SIZE ;
 char* tpk_buffer ;
 int tpk_curr ;
 int tpk_flush () ;

__attribute__((used)) static int tpk_printk(const unsigned char *buf, int count)
{
 int i = tpk_curr;

 if (buf == ((void*)0)) {
  tpk_flush();
  return i;
 }

 for (i = 0; i < count; i++) {
  if (tpk_curr >= TPK_STR_SIZE) {

   tpk_buffer[tpk_curr++] = '\\';
   tpk_flush();
  }

  switch (buf[i]) {
  case '\r':
   tpk_flush();
   if ((i + 1) < count && buf[i + 1] == '\n')
    i++;
   break;
  case '\n':
   tpk_flush();
   break;
  default:
   tpk_buffer[tpk_curr++] = buf[i];
   break;
  }
 }

 return count;
}
