
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {int id; } ;


 int erst_clear (int ) ;

__attribute__((used)) static int erst_clearer(struct pstore_record *record)
{
 return erst_clear(record->id);
}
