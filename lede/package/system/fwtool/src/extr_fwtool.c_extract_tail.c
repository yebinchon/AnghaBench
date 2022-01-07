
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_buf {int cur_len; scalar_t__ cur; } ;


 int memcpy (void*,scalar_t__,int) ;
 int remove_tail (struct data_buf*,int) ;

__attribute__((used)) static int
extract_tail(struct data_buf *dbuf, void *dest, int len)
{
 int cur_len = dbuf->cur_len;

 if (!dbuf->cur)
  return 1;

 if (cur_len >= len)
  cur_len = len;

 memcpy(dest + (len - cur_len), dbuf->cur + dbuf->cur_len - cur_len, cur_len);
 remove_tail(dbuf, cur_len);

 cur_len = len - cur_len;
 if (cur_len && !dbuf->cur)
  return 1;

 memcpy(dest, dbuf->cur + dbuf->cur_len - cur_len, cur_len);
 remove_tail(dbuf, cur_len);

 return 0;
}
