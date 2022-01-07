
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int resize_height (double old_width, double new_width, double old_height) {
  return (int) (old_height * (new_width / old_width) + 0.5);
}
