
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_message {int message; int subject; int label; int parent_label; } ;
struct commit {int dummy; } ;


 int free (int ) ;
 int unuse_commit_buffer (struct commit*,int ) ;

__attribute__((used)) static void free_message(struct commit *commit, struct commit_message *msg)
{
 free(msg->parent_label);
 free(msg->label);
 free(msg->subject);
 unuse_commit_buffer(commit, msg->message);
}
