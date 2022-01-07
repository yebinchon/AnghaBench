
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* homefiles_file (char*) ;
 char* va (char*,char const*,int,char const*) ;

__attribute__((used)) static const char* homefiles_video_path(const char* video_name,
                                        int demo_number) {
  const char* videoext = "avi";

  char* file = va("videos/%s/%05d.%s", video_name, demo_number, videoext);
  return homefiles_file(file);
}
