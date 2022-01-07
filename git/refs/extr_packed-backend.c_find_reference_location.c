
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {char* start; char* eof; } ;


 int cmp_record_to_refname (char const*,char const*) ;
 char* find_end_of_record (char const*,char const*) ;
 char* find_start_of_record (char const*,char const*) ;

__attribute__((used)) static const char *find_reference_location(struct snapshot *snapshot,
        const char *refname, int mustexist)
{
 const char *lo = snapshot->start;





 const char *hi = snapshot->eof;

 while (lo != hi) {
  const char *mid, *rec;
  int cmp;

  mid = lo + (hi - lo) / 2;
  rec = find_start_of_record(lo, mid);
  cmp = cmp_record_to_refname(rec, refname);
  if (cmp < 0) {
   lo = find_end_of_record(mid, hi);
  } else if (cmp > 0) {
   hi = rec;
  } else {
   return rec;
  }
 }

 if (mustexist)
  return ((void*)0);
 else
  return lo;
}
