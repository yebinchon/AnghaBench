
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
struct TYPE_7__ {TYPE_2__* file; TYPE_1__ map; int driver; } ;
typedef TYPE_3__ git_diff_file_content ;
struct TYPE_6__ {int flags; } ;


 int DIFF_FLAGS_KNOWN_BINARY ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_DIFF_FLAG_NOT_BINARY ;
 int git_diff_driver_content_is_binary (int ,int ,int ) ;

__attribute__((used)) static void diff_file_content_binary_by_content(git_diff_file_content *fc)
{
 if ((fc->file->flags & DIFF_FLAGS_KNOWN_BINARY) != 0)
  return;

 switch (git_diff_driver_content_is_binary(
  fc->driver, fc->map.data, fc->map.len)) {
 case 0: fc->file->flags |= GIT_DIFF_FLAG_NOT_BINARY; break;
 case 1: fc->file->flags |= GIT_DIFF_FLAG_BINARY; break;
 default: break;
 }
}
