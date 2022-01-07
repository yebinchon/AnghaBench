
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int length; int sectorsize; char* buffer; void* error; int * fds; int req; scalar_t__* offsets; scalar_t__ offset; int sector_mask; } ;
typedef scalar_t__ __u64 ;


 void* BLK_STS_NOTSUPP ;

 int REQ_OP_FLUSH ;



 int WARN_ON_ONCE (int) ;
 void* map_error (int) ;
 int memset (char*,int ,unsigned long) ;
 int os_falloc_punch (int ,scalar_t__,unsigned long) ;
 int os_pread_file (int ,char*,unsigned long,scalar_t__) ;
 int os_pwrite_file (int ,char*,unsigned long,scalar_t__) ;
 int os_sync_file (int ) ;
 int req_op (int ) ;
 int ubd_test_bit (int,unsigned char*) ;
 void* update_bitmap (struct io_thread_req*) ;

__attribute__((used)) static void do_io(struct io_thread_req *req)
{
 char *buf = ((void*)0);
 unsigned long len;
 int n, nsectors, start, end, bit;
 __u64 off;



 if (req_op(req->req) == REQ_OP_FLUSH) {

  req->error = map_error(-os_sync_file(req->fds[0]));
  return;
 }

 nsectors = req->length / req->sectorsize;
 start = 0;
 do {
  bit = ubd_test_bit(start, (unsigned char *) &req->sector_mask);
  end = start;
  while((end < nsectors) &&
        (ubd_test_bit(end, (unsigned char *)
        &req->sector_mask) == bit))
   end++;

  off = req->offset + req->offsets[bit] +
   start * req->sectorsize;
  len = (end - start) * req->sectorsize;
  if (req->buffer != ((void*)0))
   buf = &req->buffer[start * req->sectorsize];

  switch (req_op(req->req)) {
  case 130:
   n = 0;
   do {
    buf = &buf[n];
    len -= n;
    n = os_pread_file(req->fds[bit], buf, len, off);
    if (n < 0) {
     req->error = map_error(-n);
     return;
    }
   } while((n < len) && (n != 0));
   if (n < len) memset(&buf[n], 0, len - n);
   break;
  case 129:
   n = os_pwrite_file(req->fds[bit], buf, len, off);
   if(n != len){
    req->error = map_error(-n);
    return;
   }
   break;
  case 131:
  case 128:
   n = os_falloc_punch(req->fds[bit], off, len);
   if (n) {
    req->error = map_error(-n);
    return;
   }
   break;
  default:
   WARN_ON_ONCE(1);
   req->error = BLK_STS_NOTSUPP;
   return;
  }

  start = end;
 } while(start < nsectors);

 req->error = update_bitmap(req);
}
