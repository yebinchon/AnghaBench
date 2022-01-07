
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Status ;
typedef int JSON_Object ;


 int JSONFailure ;
 int * json_object_get_object (int *,char*) ;
 int json_object_remove (int *,char const*) ;
 int parson_free (char*) ;
 char* parson_strndup (char const*,int) ;
 char* strchr (char const*,char) ;

JSON_Status json_object_dotremove(JSON_Object *object, const char *name) {
    const char *dot_pos = strchr(name, '.');
    char *current_name = ((void*)0);
    JSON_Object *temp_obj = ((void*)0);
    if (dot_pos == ((void*)0)) {
        return json_object_remove(object, name);
    } else {
        current_name = parson_strndup(name, dot_pos - name);
        temp_obj = json_object_get_object(object, current_name);
        parson_free(current_name);
        if (temp_obj == ((void*)0)) {
            return JSONFailure;
        }
        return json_object_dotremove(temp_obj, dot_pos + 1);
    }
}
