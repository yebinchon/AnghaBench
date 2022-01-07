
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int * ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (int *,char*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void overwrite_filemode(const char *expected, git_buf *actual)
{
 size_t offset;
 char *found;

 found = strstr(expected, "100644");
 if (!found)
  return;

 offset = ((const char *)found) - expected;
 if (actual->size < offset + 6)
  return;

 if (memcmp(&actual->ptr[offset], "100644", 6) != 0)
  memcpy(&actual->ptr[offset], "100644", 6);
}
