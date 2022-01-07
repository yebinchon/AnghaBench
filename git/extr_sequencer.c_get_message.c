
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_message {void* label; void* parent_label; int subject; int message; } ;
struct commit {int dummy; } ;


 int find_commit_subject (int ,char const**) ;
 int get_commit_output_encoding () ;
 int logmsg_reencode (struct commit*,int *,int ) ;
 char* short_commit_name (struct commit*) ;
 int xmemdupz (char const*,int) ;
 void* xstrfmt (char*,char const*,...) ;

__attribute__((used)) static int get_message(struct commit *commit, struct commit_message *out)
{
 const char *abbrev, *subject;
 int subject_len;

 out->message = logmsg_reencode(commit, ((void*)0), get_commit_output_encoding());
 abbrev = short_commit_name(commit);

 subject_len = find_commit_subject(out->message, &subject);

 out->subject = xmemdupz(subject, subject_len);
 out->label = xstrfmt("%s... %s", abbrev, out->subject);
 out->parent_label = xstrfmt("parent of %s", out->label);

 return 0;
}
