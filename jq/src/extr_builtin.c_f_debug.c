
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;
typedef int (* jq_msg_cb ) (void*,int ) ;


 int jq_get_debug_cb (int *,int (*) (void*,int ),void**) ;
 int jv_copy (int ) ;

__attribute__((used)) static jv f_debug(jq_state *jq, jv input) {
  jq_msg_cb cb;
  void *data;
  jq_get_debug_cb(jq, &cb, &data);
  if (cb != ((void*)0))
    cb(data, jv_copy(input));
  return input;
}
