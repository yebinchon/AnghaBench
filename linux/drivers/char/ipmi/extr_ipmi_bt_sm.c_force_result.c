
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int* read_data; int* write_data; int read_count; } ;



__attribute__((used)) static void force_result(struct si_sm_data *bt, unsigned char completion_code)
{
 bt->read_data[0] = 4;
 bt->read_data[1] = bt->write_data[1] | 4;
 bt->read_data[2] = bt->write_data[2];
 bt->read_data[3] = bt->write_data[3];
 bt->read_data[4] = completion_code;
 bt->read_count = 5;
}
