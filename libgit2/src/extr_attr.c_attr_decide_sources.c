
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_attr_file_source ;



 int GIT_ATTR_CHECK_INCLUDE_HEAD ;


 int GIT_ATTR_FILE__FROM_FILE ;
 int GIT_ATTR_FILE__FROM_HEAD ;
 int GIT_ATTR_FILE__FROM_INDEX ;

__attribute__((used)) static int attr_decide_sources(
 uint32_t flags, bool has_wd, bool has_index, git_attr_file_source *srcs)
{
 int count = 0;

 switch (flags & 0x03) {
 case 130:
  if (has_wd)
   srcs[count++] = GIT_ATTR_FILE__FROM_FILE;
  if (has_index)
   srcs[count++] = GIT_ATTR_FILE__FROM_INDEX;
  break;
 case 128:
  if (has_index)
   srcs[count++] = GIT_ATTR_FILE__FROM_INDEX;
  if (has_wd)
   srcs[count++] = GIT_ATTR_FILE__FROM_FILE;
  break;
 case 129:
  if (has_index)
   srcs[count++] = GIT_ATTR_FILE__FROM_INDEX;
  break;
 }

 if ((flags & GIT_ATTR_CHECK_INCLUDE_HEAD) != 0)
  srcs[count++] = GIT_ATTR_FILE__FROM_HEAD;

 return count;
}
