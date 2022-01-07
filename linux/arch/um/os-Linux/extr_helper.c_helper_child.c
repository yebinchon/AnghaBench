
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct helper_data {char** argv; int fd; int buf; int pre_data; int (* pre_exec ) (int ) ;} ;
typedef int err ;


 int CATCH_EINTR (int) ;
 int execvp_noalloc (int ,char*,char**) ;
 int stub1 (int ) ;
 int write (int ,int*,int) ;

__attribute__((used)) static int helper_child(void *arg)
{
 struct helper_data *data = arg;
 char **argv = data->argv;
 int err, ret;

 if (data->pre_exec != ((void*)0))
  (*data->pre_exec)(data->pre_data);
 err = execvp_noalloc(data->buf, argv[0], argv);


 CATCH_EINTR(ret = write(data->fd, &err, sizeof(err)));

 return 0;
}
