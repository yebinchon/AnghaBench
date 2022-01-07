
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct upload_pack_data {int writer; TYPE_1__ haves; } ;
struct repository {int dummy; } ;
struct packet_reader {int dummy; } ;
struct object_array {int nr; } ;
struct argv_array {int dummy; } ;
typedef enum fetch_state { ____Placeholder_fetch_state } fetch_state ;


 int ALL_FLAGS ;




 int LARGE_PACKET_MAX ;
 struct object_array OBJECT_ARRAY_INIT ;
 int clear_object_flags (int ) ;
 int create_pack_file (struct object_array*,struct object_array*) ;
 int git_config (int ,int *) ;
 int object_array_clear (struct object_array*) ;
 int packet_writer_write (int *,char*) ;
 int process_args (struct packet_reader*,struct upload_pack_data*,struct object_array*) ;
 int process_haves_and_send_acks (struct upload_pack_data*,struct object_array*,struct object_array*) ;
 int send_shallow_info (struct upload_pack_data*,struct object_array*) ;
 int send_wanted_ref_info (struct upload_pack_data*) ;
 int upload_pack_config ;
 int upload_pack_data_clear (struct upload_pack_data*) ;
 int upload_pack_data_init (struct upload_pack_data*) ;
 int use_sideband ;

int upload_pack_v2(struct repository *r, struct argv_array *keys,
     struct packet_reader *request)
{
 enum fetch_state state = 130;
 struct upload_pack_data data;
 struct object_array have_obj = OBJECT_ARRAY_INIT;
 struct object_array want_obj = OBJECT_ARRAY_INIT;

 clear_object_flags(ALL_FLAGS);

 git_config(upload_pack_config, ((void*)0));

 upload_pack_data_init(&data);
 use_sideband = LARGE_PACKET_MAX;

 while (state != 131) {
  switch (state) {
  case 130:
   process_args(request, &data, &want_obj);

   if (!want_obj.nr) {




    state = 131;
   } else if (data.haves.nr) {



    state = 129;
   } else {




    state = 128;
   }
   break;
  case 129:
   if (process_haves_and_send_acks(&data, &have_obj,
       &want_obj))
    state = 128;
   else
    state = 131;
   break;
  case 128:
   send_wanted_ref_info(&data);
   send_shallow_info(&data, &want_obj);

   packet_writer_write(&data.writer, "packfile\n");
   create_pack_file(&have_obj, &want_obj);
   state = 131;
   break;
  case 131:
   continue;
  }
 }

 upload_pack_data_clear(&data);
 object_array_clear(&have_obj);
 object_array_clear(&want_obj);
 return 0;
}
