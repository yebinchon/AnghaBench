
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int file; } ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int sev_issue_cmd_external_user (int ,int,void*,int*) ;

__attribute__((used)) static int __sev_issue_cmd(int fd, int id, void *data, int *error)
{
 struct fd f;
 int ret;

 f = fdget(fd);
 if (!f.file)
  return -EBADF;

 ret = sev_issue_cmd_external_user(f.file, id, data, error);

 fdput(f);
 return ret;
}
