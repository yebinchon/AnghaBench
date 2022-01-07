
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsck_options {int dummy; } ;
struct commit {int dummy; } ;


 int fsck_commit_buffer (struct commit*,char const*,unsigned long,struct fsck_options*) ;
 char const* get_commit_buffer (struct commit*,unsigned long*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static int fsck_commit(struct commit *commit, const char *data,
 unsigned long size, struct fsck_options *options)
{
 const char *buffer = data ? data : get_commit_buffer(commit, &size);
 int ret = fsck_commit_buffer(commit, buffer, size, options);
 if (!data)
  unuse_commit_buffer(commit, buffer);
 return ret;
}
