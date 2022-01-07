
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const GIT_FILEMODE_BLOB ;
 int const GIT_FILEMODE_BLOB_EXECUTABLE ;
 int const GIT_FILEMODE_COMMIT ;
 int const GIT_FILEMODE_LINK ;
 int const GIT_FILEMODE_TREE ;

__attribute__((used)) static bool valid_filemode(const int filemode)
{
 return (filemode == GIT_FILEMODE_TREE
  || filemode == GIT_FILEMODE_BLOB
  || filemode == GIT_FILEMODE_BLOB_EXECUTABLE
  || filemode == GIT_FILEMODE_LINK
  || filemode == GIT_FILEMODE_COMMIT);
}
