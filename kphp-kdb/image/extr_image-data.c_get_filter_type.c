
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FilterTypes ;


 int BlackmanFilter ;
 int BoxFilter ;
 int CatromFilter ;
 int CubicFilter ;
 int GaussianFilter ;
 int HanningFilter ;
 int HermiteFilter ;
 int LanczosFilter ;
 int MitchellFilter ;
 int PointFilter ;
 int QuadraticFilter ;
 int SincFilter ;
 int TriangleFilter ;
 int UndefinedFilter ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static FilterTypes get_filter_type (const char* s) {
  switch (*s++) {
  case 'b':
    if (!strcmp ("ox", s)) {
      return BoxFilter;
    }
    if (!strcmp ("lackman", s)) {
      return BlackmanFilter;
    }
    if (!strcmp ("essel", s)) {
      return BlackmanFilter;
    }
    break;
  case 'c':
    if (!strcmp ("ubic", s)) {
      return CubicFilter;
    }
    if (!strcmp ("atrom", s)) {
      return CatromFilter;
    }
    break;
  case 'g':
    if (!strcmp ("aussian", s)) {
      return GaussianFilter;
    }
    break;
  case 'h':
    if (!strcmp ("ermite", s)) {
      return HermiteFilter;
    }
    if (!strcmp ("anning", s)) {
      return HanningFilter;
    }
    break;
  case 'l':
    if (!strcmp ("anczos", s)) {
      return LanczosFilter;
    }
    break;
  case 'm':
    if (!strcmp ("itchell", s)) {
      return MitchellFilter;
    }
    break;
  case 'p':
    if (!strcmp ("oint", s)) {
      return PointFilter;
    }
    break;
  case 'q':
    if (!strcmp ("uadratic", s)) {
      return QuadraticFilter;
    }
    break;
  case 's':
    if (!strcmp ("inc", s)) {
      return SincFilter;
    }
    break;
  case 't':
    if (!strcmp ("riangle", s)) {
      return TriangleFilter;
    }
    break;
  }
  return UndefinedFilter;
}
