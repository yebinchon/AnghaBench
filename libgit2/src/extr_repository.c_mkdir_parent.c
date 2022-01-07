
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int GIT_MKDIR_SKIP_LAST2 ;
 int GIT_MKDIR_VERIFY_DIR ;
 int S_ISGID ;
 int git_futils_mkdir (int ,int,int) ;

__attribute__((used)) static int mkdir_parent(git_buf *buf, uint32_t mode, bool skip2)
{



 return git_futils_mkdir(
  buf->ptr, mode & ~(S_ISGID | 0002),
  GIT_MKDIR_PATH | GIT_MKDIR_VERIFY_DIR |
  (skip2 ? GIT_MKDIR_SKIP_LAST2 : GIT_MKDIR_SKIP_LAST));
}
