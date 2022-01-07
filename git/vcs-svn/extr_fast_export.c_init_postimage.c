
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_tmpfile_init (int *) ;
 int postimage ;

__attribute__((used)) static int init_postimage(void)
{
 static int postimage_initialized;
 if (postimage_initialized)
  return 0;
 postimage_initialized = 1;
 return buffer_tmpfile_init(&postimage);
}
