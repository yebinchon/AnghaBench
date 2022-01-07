
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int flags; } ;



__attribute__((used)) static int all_flags (struct file_info *file, int mask) {
  return (file->flags & mask) == mask;
}
