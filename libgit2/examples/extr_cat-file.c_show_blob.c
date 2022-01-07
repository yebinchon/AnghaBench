
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_blob ;


 int fwrite (int ,size_t,int,int ) ;
 int git_blob_rawcontent (int const*) ;
 scalar_t__ git_blob_rawsize (int const*) ;
 int stdout ;

__attribute__((used)) static void show_blob(const git_blob *blob)
{

 fwrite(git_blob_rawcontent(blob), (size_t)git_blob_rawsize(blob), 1, stdout);
}
