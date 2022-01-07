
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* do_xmalloc (size_t,int) ;
 int error (char*) ;
 scalar_t__ unsigned_add_overflows (size_t,int) ;

__attribute__((used)) static void *do_xmallocz(size_t size, int gentle)
{
 void *ret;
 if (unsigned_add_overflows(size, 1)) {
  if (gentle) {
   error("Data too large to fit into virtual memory space.");
   return ((void*)0);
  } else
   die("Data too large to fit into virtual memory space.");
 }
 ret = do_xmalloc(size + 1, gentle);
 if (ret)
  ((char*)ret)[size] = 0;
 return ret;
}
