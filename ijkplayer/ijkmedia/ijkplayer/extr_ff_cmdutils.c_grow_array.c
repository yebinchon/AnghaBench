
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int AV_LOG_ERROR ;
 int INT_MAX ;
 int av_log (int *,int ,char*) ;
 void* av_realloc_array (void*,int,int) ;
 int memset (void*,int ,int) ;

void *grow_array(void *array, int elem_size, int *size, int new_size)
{
    if (new_size >= INT_MAX / elem_size) {
        av_log(((void*)0), AV_LOG_ERROR, "Array too big.\n");
        return ((void*)0);
    }
    if (*size < new_size) {
        uint8_t *tmp = av_realloc_array(array, new_size, elem_size);
        if (!tmp) {
            av_log(((void*)0), AV_LOG_ERROR, "Could not alloc buffer.\n");
            return ((void*)0);
        }
        memset(tmp + *size*elem_size, 0, (new_size-*size) * elem_size);
        *size = new_size;
        return tmp;
    }
    return array;
}
