
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fsck_options {int dummy; } ;


 int FSCK_MSG_NUL_IN_HEADER ;
 int FSCK_MSG_UNTERMINATED_HEADER ;
 int report (struct fsck_options*,struct object*,int ,char*,...) ;

__attribute__((used)) static int verify_headers(const void *data, unsigned long size,
     struct object *obj, struct fsck_options *options)
{
 const char *buffer = (const char *)data;
 unsigned long i;

 for (i = 0; i < size; i++) {
  switch (buffer[i]) {
  case '\0':
   return report(options, obj,
    FSCK_MSG_NUL_IN_HEADER,
    "unterminated header: NUL at offset %ld", i);
  case '\n':
   if (i + 1 < size && buffer[i + 1] == '\n')
    return 0;
  }
 }







 if (size && buffer[size - 1] == '\n')
  return 0;

 return report(options, obj,
  FSCK_MSG_UNTERMINATED_HEADER, "unterminated header");
}
