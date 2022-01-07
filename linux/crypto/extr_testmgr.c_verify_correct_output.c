
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_sglist {unsigned int nents; struct scatterlist* sgl_ptr; } ;
struct scatterlist {unsigned int length; unsigned int offset; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int TESTMGR_POISON_LEN ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ memcmp (char const*,char const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 char* page_address (int ) ;
 int sg_page (struct scatterlist*) ;
 int testmgr_is_poison (char const*,int ) ;

__attribute__((used)) static int verify_correct_output(const struct test_sglist *tsgl,
     const char *expected_output,
     unsigned int len_to_check,
     unsigned int unchecked_prefix_len,
     bool check_poison)
{
 unsigned int i;

 for (i = 0; i < tsgl->nents; i++) {
  struct scatterlist *sg = &tsgl->sgl_ptr[i];
  unsigned int len = sg->length;
  unsigned int offset = sg->offset;
  const char *actual_output;

  if (unchecked_prefix_len) {
   if (unchecked_prefix_len >= len) {
    unchecked_prefix_len -= len;
    continue;
   }
   offset += unchecked_prefix_len;
   len -= unchecked_prefix_len;
   unchecked_prefix_len = 0;
  }
  len = min(len, len_to_check);
  actual_output = page_address(sg_page(sg)) + offset;
  if (memcmp(expected_output, actual_output, len) != 0)
   return -EINVAL;
  if (check_poison &&
      !testmgr_is_poison(actual_output + len, TESTMGR_POISON_LEN))
   return -EOVERFLOW;
  len_to_check -= len;
  expected_output += len;
 }
 if (WARN_ON(len_to_check != 0))
  return -EINVAL;
 return 0;
}
