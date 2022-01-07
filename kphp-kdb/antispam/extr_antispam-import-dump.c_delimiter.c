
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool delimiter (char c) {
  return c == 0xA || c == 0xD || c == '\t';
}
