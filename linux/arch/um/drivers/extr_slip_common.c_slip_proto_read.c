
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_proto {int more; size_t pos; int * ibuf; int esc; } ;


 int memcpy (void*,int *,int) ;
 int memmove (int *,int *,int) ;
 int net_read (int,int *,int) ;
 int slip_unesc (int ,int *,size_t*,int *) ;

int slip_proto_read(int fd, void *buf, int len, struct slip_proto *slip)
{
 int i, n, size, start;

 if(slip->more > 0){
  i = 0;
  while(i < slip->more){
   size = slip_unesc(slip->ibuf[i++], slip->ibuf,
       &slip->pos, &slip->esc);
   if(size){
    memcpy(buf, slip->ibuf, size);
    memmove(slip->ibuf, &slip->ibuf[i],
     slip->more - i);
    slip->more = slip->more - i;
    return size;
   }
  }
  slip->more = 0;
 }

 n = net_read(fd, &slip->ibuf[slip->pos],
       sizeof(slip->ibuf) - slip->pos);
 if(n <= 0)
  return n;

 start = slip->pos;
 for(i = 0; i < n; i++){
  size = slip_unesc(slip->ibuf[start + i], slip->ibuf,&slip->pos,
      &slip->esc);
  if(size){
   memcpy(buf, slip->ibuf, size);
   memmove(slip->ibuf, &slip->ibuf[start+i+1],
    n - (i + 1));
   slip->more = n - (i + 1);
   return size;
  }
 }
 return 0;
}
