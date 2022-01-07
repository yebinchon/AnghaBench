
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag2fc_data {int dummy; } ;


 int EACCES ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 scalar_t__ diag2fc (int,char*,void*) ;
 int vfree (void*) ;
 void* vmalloc (int) ;

__attribute__((used)) static void *diag2fc_store(char *query, unsigned int *count, int offset)
{
 void *data;
 int size;

 do {
  size = diag2fc(0, query, ((void*)0));
  if (size < 0)
   return ERR_PTR(-EACCES);
  data = vmalloc(size + offset);
  if (!data)
   return ERR_PTR(-ENOMEM);
  if (diag2fc(size, query, data + offset) == 0)
   break;
  vfree(data);
 } while (1);
 *count = (size / sizeof(struct diag2fc_data));

 return data;
}
