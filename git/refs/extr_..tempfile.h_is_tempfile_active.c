
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {scalar_t__ active; } ;



__attribute__((used)) static inline int is_tempfile_active(struct tempfile *tempfile)
{
 return tempfile && tempfile->active;
}
