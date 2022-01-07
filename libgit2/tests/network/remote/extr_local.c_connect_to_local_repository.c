
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIRECTION_FETCH ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (char const*) ;
 int file_path_buf ;
 int git_buf_cstr (int *) ;
 int git_buf_sets (int *,int ) ;
 int git_remote_connect (int ,int ,int *,int *,int *) ;
 int git_remote_create_anonymous (int *,int ,int ) ;
 int remote ;
 int repo ;

__attribute__((used)) static void connect_to_local_repository(const char *local_repository)
{
 git_buf_sets(&file_path_buf, cl_git_path_url(local_repository));

 cl_git_pass(git_remote_create_anonymous(&remote, repo, git_buf_cstr(&file_path_buf)));
 cl_git_pass(git_remote_connect(remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
}
