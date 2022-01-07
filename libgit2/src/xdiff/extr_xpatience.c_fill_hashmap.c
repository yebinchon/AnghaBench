
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xpparam_t ;
typedef int xdfenv_t ;
struct hashmap {int alloc; struct entry* entries; int * env; int const* xpp; int * file2; int * file1; } ;
struct entry {int dummy; } ;
typedef int mmfile_t ;


 int insert_record (int const*,int ,struct hashmap*,int) ;
 int memset (struct entry*,int ,int) ;
 scalar_t__ xdl_malloc (int) ;

__attribute__((used)) static int fill_hashmap(mmfile_t *file1, mmfile_t *file2,
  xpparam_t const *xpp, xdfenv_t *env,
  struct hashmap *result,
  int line1, int count1, int line2, int count2)
{
 result->file1 = file1;
 result->file2 = file2;
 result->xpp = xpp;
 result->env = env;


 result->alloc = count1 * 2;
 result->entries = (struct entry *)
  xdl_malloc(result->alloc * sizeof(struct entry));
 if (!result->entries)
  return -1;
 memset(result->entries, 0, result->alloc * sizeof(struct entry));


 while (count1--)
  insert_record(xpp, line1++, result, 1);


 while (count2--)
  insert_record(xpp, line2++, result, 2);

 return 0;
}
