
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snapshot {char* start; char* eof; TYPE_1__* refs; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int path; } ;


 int die_invalid_line (int ,char const*,int) ;
 char* find_start_of_record (char const*,char const*) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static void verify_buffer_safe(struct snapshot *snapshot)
{
 const char *start = snapshot->start;
 const char *eof = snapshot->eof;
 const char *last_line;

 if (start == eof)
  return;

 last_line = find_start_of_record(start, eof - 1);
 if (*(eof - 1) != '\n' || eof - last_line < the_hash_algo->hexsz + 2)
  die_invalid_line(snapshot->refs->path,
     last_line, eof - last_line);
}
