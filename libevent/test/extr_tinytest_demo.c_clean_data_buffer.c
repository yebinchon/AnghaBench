
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int dummy; } ;
struct data_buffer {int dummy; } ;


 int free (struct data_buffer*) ;

int
clean_data_buffer(const struct testcase_t *testcase, void *ptr)
{
 struct data_buffer *db = ptr;

 if (db) {
  free(db);
  return 1;
 }
 return 0;
}
