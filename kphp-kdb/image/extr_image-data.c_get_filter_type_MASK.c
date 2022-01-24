#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FilterTypes ;

/* Variables and functions */
 int /*<<< orphan*/  BlackmanFilter ; 
 int /*<<< orphan*/  BoxFilter ; 
 int /*<<< orphan*/  CatromFilter ; 
 int /*<<< orphan*/  CubicFilter ; 
 int /*<<< orphan*/  GaussianFilter ; 
 int /*<<< orphan*/  HanningFilter ; 
 int /*<<< orphan*/  HermiteFilter ; 
 int /*<<< orphan*/  LanczosFilter ; 
 int /*<<< orphan*/  MitchellFilter ; 
 int /*<<< orphan*/  PointFilter ; 
 int /*<<< orphan*/  QuadraticFilter ; 
 int /*<<< orphan*/  SincFilter ; 
 int /*<<< orphan*/  TriangleFilter ; 
 int /*<<< orphan*/  UndefinedFilter ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static FilterTypes FUNC1 (const char* s) {
  switch (*s++) {
  case 'b':
    if (!FUNC0 ("ox", s)) {
      return BoxFilter;
    }
    if (!FUNC0 ("lackman", s)) {
      return BlackmanFilter;
    }
    if (!FUNC0 ("essel", s)) {
      return BlackmanFilter;
    }
    break;
  case 'c':
    if (!FUNC0 ("ubic", s)) {
      return CubicFilter;
    }
    if (!FUNC0 ("atrom", s)) {
      return CatromFilter;
    }
    break;
  case 'g':
    if (!FUNC0 ("aussian", s)) {
      return GaussianFilter;
    }
    break;
  case 'h':
    if (!FUNC0 ("ermite", s)) {
      return HermiteFilter;
    }
    if (!FUNC0 ("anning", s)) {
      return HanningFilter;
    }
    break;
  case 'l':
    if (!FUNC0 ("anczos", s)) {
      return LanczosFilter;
    }
    break;
  case 'm':
    if (!FUNC0 ("itchell", s)) {
      return MitchellFilter;
    }
    break;
  case 'p':
    if (!FUNC0 ("oint", s)) {
      return PointFilter;
    }
    break;
  case 'q':
    if (!FUNC0 ("uadratic", s)) {
      return QuadraticFilter;
    }
    break;
  case 's':
    if (!FUNC0 ("inc", s)) {
      return SincFilter;
    }
    break;
  case 't':
    if (!FUNC0 ("riangle", s)) {
      return TriangleFilter;
    }
    break;
  }
  return UndefinedFilter;
}