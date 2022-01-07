
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; } ;
struct upload_pack_data {TYPE_1__ shallows; int deepen_relative; int writer; int deepen_not; int deepen_since; int deepen_rev_list; int depth; } ;
struct object_array {int dummy; } ;


 int INFINITE_DEPTH ;
 int deepen (int *,int ,int ,TYPE_1__*,struct object_array*) ;
 scalar_t__ is_repository_shallow (int ) ;
 int packet_delim (int) ;
 int packet_writer_write (int *,char*) ;
 int send_shallow_list (int *,int ,int ,int ,int *,int ,TYPE_1__*,struct object_array*) ;
 int the_repository ;

__attribute__((used)) static void send_shallow_info(struct upload_pack_data *data,
         struct object_array *want_obj)
{

 if (!data->depth && !data->deepen_rev_list && !data->shallows.nr &&
     !is_repository_shallow(the_repository))
  return;

 packet_writer_write(&data->writer, "shallow-info\n");

 if (!send_shallow_list(&data->writer, data->depth,
          data->deepen_rev_list,
          data->deepen_since, &data->deepen_not,
          data->deepen_relative,
          &data->shallows, want_obj) &&
     is_repository_shallow(the_repository))
  deepen(&data->writer, INFINITE_DEPTH, data->deepen_relative,
         &data->shallows, want_obj);

 packet_delim(1);
}
