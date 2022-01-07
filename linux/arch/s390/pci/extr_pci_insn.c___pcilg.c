
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ____pcilg (int *,int ,int ,int *) ;

__attribute__((used)) static inline int __pcilg(u64 *data, u64 req, u64 offset, u8 *status)
{
 u64 __data;
 int cc;

 cc = ____pcilg(&__data, req, offset, status);
 if (!cc)
  *data = __data;

 return cc;
}
