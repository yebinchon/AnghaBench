
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* data; } ;
typedef TYPE_1__ OpenFiles_Data ;


 int free (scalar_t__) ;

__attribute__((used)) static inline void OpenFiles_Data_clear(OpenFiles_Data* data) {
   for (int i = 0; i < 255; i++)
      if (data->data[i])
         free(data->data[i]);
}
