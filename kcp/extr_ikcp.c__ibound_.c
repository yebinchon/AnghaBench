
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUINT32 ;


 int _imax_ (int ,int ) ;
 int _imin_ (int ,int ) ;

__attribute__((used)) static inline IUINT32 _ibound_(IUINT32 lower, IUINT32 middle, IUINT32 upper)
{
 return _imin_(_imax_(lower, middle), upper);
}
