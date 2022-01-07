
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct rev_info {scalar_t__ reflog_info; } ;
struct commit {int date; } ;


 int get_reflog_timestamp (scalar_t__) ;

__attribute__((used)) static timestamp_t comparison_date(const struct rev_info *revs,
       struct commit *commit)
{
 return revs->reflog_info ?
  get_reflog_timestamp(revs->reflog_info) :
  commit->date;
}
