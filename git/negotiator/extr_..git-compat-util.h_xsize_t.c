
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int die (char*) ;

__attribute__((used)) static inline size_t xsize_t(off_t len)
{
 size_t size = (size_t) len;

 if (len != (off_t) size)
  die("Cannot handle files this big");
 return size;
}
