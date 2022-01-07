
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_options {scalar_t__ detect_renames; } ;



__attribute__((used)) static inline int merge_detect_rename(struct merge_options *opt)
{
 return (opt->detect_renames >= 0) ? opt->detect_renames : 1;
}
