
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int erasesize ;
 int ofs ;

__attribute__((used)) static inline int rbytes(void)
{
 return erasesize - (ofs % erasesize);
}
