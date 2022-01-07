
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef scalar_t__ JSON_Status ;
typedef int JSON_Object ;


 scalar_t__ JSONFailure ;
 scalar_t__ json_object_add (int *,char*,int *) ;
 int * json_object_get_object (int *,char*) ;
 scalar_t__ json_object_set_value (int *,char const*,int *) ;
 int json_value_free (int *) ;
 int * json_value_init_object () ;
 int parson_free (char*) ;
 char* parson_strndup (char const*,int) ;
 char* strchr (char const*,char) ;

JSON_Status json_object_dotset_value(JSON_Object *object, const char *name, JSON_Value *value) {
    const char *dot_pos = ((void*)0);
    char *current_name = ((void*)0);
    JSON_Object *temp_obj = ((void*)0);
    JSON_Value *new_value = ((void*)0);
    if (object == ((void*)0) || name == ((void*)0) || value == ((void*)0)) {
        return JSONFailure;
    }
    dot_pos = strchr(name, '.');
    if (dot_pos == ((void*)0)) {
        return json_object_set_value(object, name, value);
    } else {
        current_name = parson_strndup(name, dot_pos - name);
        temp_obj = json_object_get_object(object, current_name);
        if (temp_obj == ((void*)0)) {
            new_value = json_value_init_object();
            if (new_value == ((void*)0)) {
                parson_free(current_name);
                return JSONFailure;
            }
            if (json_object_add(object, current_name, new_value) == JSONFailure) {
                json_value_free(new_value);
                parson_free(current_name);
                return JSONFailure;
            }
            temp_obj = json_object_get_object(object, current_name);
        }
        parson_free(current_name);
        return json_object_dotset_value(temp_obj, dot_pos + 1, value);
    }
}
