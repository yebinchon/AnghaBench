
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snapshot_record {char const* start; int len; } ;
struct snapshot {char* start; char* eof; char* buf; TYPE_1__* refs; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int path; } ;


 int ALLOC_GROW (struct snapshot_record*,size_t,size_t) ;
 int BUG (char*) ;
 int QSORT (struct snapshot_record*,size_t,scalar_t__ (*) (struct snapshot_record*,struct snapshot_record*)) ;
 int clear_snapshot_buffer (struct snapshot*) ;
 scalar_t__ cmp_packed_ref_records (struct snapshot_record*,struct snapshot_record*) ;
 int die_invalid_line (int ,char const*,int) ;
 int free (struct snapshot_record*) ;
 char* memchr (char const*,char,int) ;
 int memcpy (char*,char const*,int) ;
 TYPE_2__* the_hash_algo ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void sort_snapshot(struct snapshot *snapshot)
{
 struct snapshot_record *records = ((void*)0);
 size_t alloc = 0, nr = 0;
 int sorted = 1;
 const char *pos, *eof, *eol;
 size_t len, i;
 char *new_buffer, *dst;

 pos = snapshot->start;
 eof = snapshot->eof;

 if (pos == eof)
  return;

 len = eof - pos;





 ALLOC_GROW(records, len / 80 + 20, alloc);

 while (pos < eof) {
  eol = memchr(pos, '\n', eof - pos);
  if (!eol)

   BUG("unterminated line found in packed-refs");
  if (eol - pos < the_hash_algo->hexsz + 2)
   die_invalid_line(snapshot->refs->path,
      pos, eof - pos);
  eol++;
  if (eol < eof && *eol == '^') {




   const char *peeled_start = eol;

   eol = memchr(peeled_start, '\n', eof - peeled_start);
   if (!eol)

    BUG("unterminated peeled line found in packed-refs");
   eol++;
  }

  ALLOC_GROW(records, nr + 1, alloc);
  records[nr].start = pos;
  records[nr].len = eol - pos;
  nr++;

  if (sorted &&
      nr > 1 &&
      cmp_packed_ref_records(&records[nr - 2],
        &records[nr - 1]) >= 0)
   sorted = 0;

  pos = eol;
 }

 if (sorted)
  goto cleanup;


 QSORT(records, nr, cmp_packed_ref_records);






 new_buffer = xmalloc(len);
 for (dst = new_buffer, i = 0; i < nr; i++) {
  memcpy(dst, records[i].start, records[i].len);
  dst += records[i].len;
 }





 clear_snapshot_buffer(snapshot);
 snapshot->buf = snapshot->start = new_buffer;
 snapshot->eof = new_buffer + len;

cleanup:
 free(records);
}
