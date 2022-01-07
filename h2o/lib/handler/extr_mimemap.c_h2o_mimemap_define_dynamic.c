
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_mimemap_type_t ;
typedef int h2o_mimemap_t ;
typedef int h2o_globalconf_t ;


 int * create_dynamic_type (int *,int *) ;
 int h2o_mem_release_shared (int *) ;
 int set_default_type (int *,int *) ;
 int set_type (int *,char const*,int *) ;

h2o_mimemap_type_t *h2o_mimemap_define_dynamic(h2o_mimemap_t *mimemap, const char **exts, h2o_globalconf_t *globalconf)
{



    h2o_mimemap_type_t *new_type = create_dynamic_type(globalconf, mimemap);
    size_t i;

    for (i = 0; exts[i] != ((void*)0); ++i) {
        if (exts[i][0] == '\0') {

            set_default_type(mimemap, new_type);
        } else {
            set_type(mimemap, exts[i], new_type);
        }
    }
    h2o_mem_release_shared(new_type);
    return new_type;
}
