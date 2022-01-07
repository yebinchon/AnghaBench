
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_nearbranch(int offset)
{
 return (offset < 32768) && (offset >= -32768);
}
