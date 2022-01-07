
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int cow_offset; int bitmap_words; int * fds; } ;


 int map_error (int) ;
 int os_pwrite_file (int ,int *,int,int) ;

__attribute__((used)) static int update_bitmap(struct io_thread_req *req)
{
 int n;

 if(req->cow_offset == -1)
  return map_error(0);

 n = os_pwrite_file(req->fds[1], &req->bitmap_words,
     sizeof(req->bitmap_words), req->cow_offset);
 if (n != sizeof(req->bitmap_words))
  return map_error(-n);

 return map_error(0);
}
