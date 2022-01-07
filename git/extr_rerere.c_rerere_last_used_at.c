
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;
struct stat {int st_mtime; } ;
struct rerere_id {int dummy; } ;


 int rerere_path (struct rerere_id*,char*) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static timestamp_t rerere_last_used_at(struct rerere_id *id)
{
 struct stat st;

 return stat(rerere_path(id, "postimage"), &st) ? (time_t) 0 : st.st_mtime;
}
