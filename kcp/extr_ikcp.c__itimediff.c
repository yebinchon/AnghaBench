
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ IUINT32 ;
typedef long IINT32 ;



__attribute__((used)) static inline long _itimediff(IUINT32 later, IUINT32 earlier)
{
 return ((IINT32)(later - earlier));
}
