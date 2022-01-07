; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_init_class.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_init_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.RObject*, %struct.RClass*, %struct.RClass*, %struct.RClass*, %struct.RClass* }
%struct.RObject = type { i32 }
%struct.RClass = type { %struct.RClass* }

@.str = private unnamed_addr constant [12 x i8] c"BasicObject\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@MRB_TT_PROC = common dso_local global i32 0, align 4
@MRB_TT_CLASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_bob_init = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@mrb_bob_not = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@mrb_obj_equal_m = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@mrb_obj_not_equal_m = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"__id__\00", align 1
@mrb_obj_id_m = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"__send__\00", align 1
@mrb_f_send = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"instance_eval\00", align 1
@mrb_obj_instance_eval = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@mrb_class_new_class = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"superclass\00", align 1
@mrb_class_superclass = common dso_local global i32 0, align 4
@mrb_instance_new = common dso_local global i32 0, align 4
@mrb_class_initialize = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"inherited\00", align 1
@MRB_TT_MODULE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"extend_object\00", align 1
@mrb_mod_extend_object = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"prepended\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"prepend_features\00", align 1
@mrb_mod_prepend_features = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"include?\00", align 1
@mrb_mod_include_p = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"append_features\00", align 1
@mrb_mod_append_features = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"class_eval\00", align 1
@mrb_mod_module_eval = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"included\00", align 1
@mrb_mod_initialize = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"module_eval\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"module_function\00", align 1
@mrb_mod_module_function = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@mrb_mod_dummy_visibility = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"attr_reader\00", align 1
@mrb_mod_attr_reader = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"attr_writer\00", align 1
@mrb_mod_attr_writer = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@mrb_mod_to_s = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"alias_method\00", align 1
@mrb_mod_alias = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@mrb_mod_ancestors = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"undef_method\00", align 1
@mrb_mod_undef = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"const_defined?\00", align 1
@mrb_mod_const_defined = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"const_get\00", align 1
@mrb_mod_const_get = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"const_set\00", align 1
@mrb_mod_const_set = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"remove_const\00", align 1
@mrb_mod_remove_const = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"const_missing\00", align 1
@mrb_mod_const_missing = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"method_defined?\00", align 1
@mrb_mod_method_defined = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"define_method\00", align 1
@mod_define_method = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@mrb_mod_eqq = common dso_local global i32 0, align 4
@MRB_TT_OBJECT = common dso_local global i32 0, align 4
@inspect_main = common dso_local global i32 0, align 4
@top_define_method = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_class(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call %struct.RClass* @boot_defclass(%struct.TYPE_14__* %7, %struct.RClass* null)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.RClass*, %struct.RClass** %3, align 8
  %11 = call %struct.RClass* @boot_defclass(%struct.TYPE_14__* %9, %struct.RClass* %10)
  store %struct.RClass* %11, %struct.RClass** %4, align 8
  %12 = load %struct.RClass*, %struct.RClass** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store %struct.RClass* %12, %struct.RClass** %14, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = load %struct.RClass*, %struct.RClass** %4, align 8
  %17 = call %struct.RClass* @boot_defclass(%struct.TYPE_14__* %15, %struct.RClass* %16)
  store %struct.RClass* %17, %struct.RClass** %5, align 8
  %18 = load %struct.RClass*, %struct.RClass** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  store %struct.RClass* %18, %struct.RClass** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %5, align 8
  %23 = call %struct.RClass* @boot_defclass(%struct.TYPE_14__* %21, %struct.RClass* %22)
  store %struct.RClass* %23, %struct.RClass** %6, align 8
  %24 = load %struct.RClass*, %struct.RClass** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  store %struct.RClass* %24, %struct.RClass** %26, align 8
  %27 = load %struct.RClass*, %struct.RClass** %6, align 8
  %28 = load %struct.RClass*, %struct.RClass** %6, align 8
  %29 = getelementptr inbounds %struct.RClass, %struct.RClass* %28, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %29, align 8
  %30 = load %struct.RClass*, %struct.RClass** %5, align 8
  %31 = getelementptr inbounds %struct.RClass, %struct.RClass* %30, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %31, align 8
  %32 = load %struct.RClass*, %struct.RClass** %4, align 8
  %33 = getelementptr inbounds %struct.RClass, %struct.RClass* %32, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %33, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = getelementptr inbounds %struct.RClass, %struct.RClass* %34, i32 0, i32 0
  store %struct.RClass* %27, %struct.RClass** %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = load %struct.RClass*, %struct.RClass** %3, align 8
  %38 = call i32 @make_metaclass(%struct.TYPE_14__* %36, %struct.RClass* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %4, align 8
  %41 = call i32 @make_metaclass(%struct.TYPE_14__* %39, %struct.RClass* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %5, align 8
  %44 = call i32 @make_metaclass(%struct.TYPE_14__* %42, %struct.RClass* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = load %struct.RClass*, %struct.RClass** %6, align 8
  %47 = call i32 @make_metaclass(%struct.TYPE_14__* %45, %struct.RClass* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = load %struct.RClass*, %struct.RClass** %3, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = call i32 @mrb_obj_value(%struct.RClass* %50)
  %52 = call i32 @mrb_define_const(%struct.TYPE_14__* %48, %struct.RClass* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = load %struct.RClass*, %struct.RClass** %4, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = call i32 @mrb_obj_value(%struct.RClass* %55)
  %57 = call i32 @mrb_define_const(%struct.TYPE_14__* %53, %struct.RClass* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = load %struct.RClass*, %struct.RClass** %4, align 8
  %60 = load %struct.RClass*, %struct.RClass** %4, align 8
  %61 = call i32 @mrb_obj_value(%struct.RClass* %60)
  %62 = call i32 @mrb_define_const(%struct.TYPE_14__* %58, %struct.RClass* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = load %struct.RClass*, %struct.RClass** %4, align 8
  %65 = load %struct.RClass*, %struct.RClass** %5, align 8
  %66 = call i32 @mrb_obj_value(%struct.RClass* %65)
  %67 = call i32 @mrb_define_const(%struct.TYPE_14__* %63, %struct.RClass* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = load %struct.RClass*, %struct.RClass** %4, align 8
  %70 = load %struct.RClass*, %struct.RClass** %6, align 8
  %71 = call i32 @mrb_obj_value(%struct.RClass* %70)
  %72 = call i32 @mrb_define_const(%struct.TYPE_14__* %68, %struct.RClass* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = load %struct.RClass*, %struct.RClass** %3, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = call i32 @mrb_intern_lit(%struct.TYPE_14__* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @mrb_class_name_class(%struct.TYPE_14__* %73, i32* null, %struct.RClass* %74, i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = load %struct.RClass*, %struct.RClass** %4, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = call i32 @mrb_intern_lit(%struct.TYPE_14__* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @mrb_class_name_class(%struct.TYPE_14__* %78, i32* null, %struct.RClass* %79, i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = load %struct.RClass*, %struct.RClass** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = call i32 @mrb_intern_lit(%struct.TYPE_14__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @mrb_class_name_class(%struct.TYPE_14__* %83, i32* null, %struct.RClass* %84, i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = load %struct.RClass*, %struct.RClass** %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = call i32 @mrb_intern_lit(%struct.TYPE_14__* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @mrb_class_name_class(%struct.TYPE_14__* %88, i32* null, %struct.RClass* %89, i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.RClass*, %struct.RClass** %95, align 8
  %97 = call %struct.RClass* @mrb_define_class(%struct.TYPE_14__* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.RClass* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store %struct.RClass* %97, %struct.RClass** %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.RClass*, %struct.RClass** %101, align 8
  %103 = load i32, i32* @MRB_TT_PROC, align 4
  %104 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %102, i32 %103)
  %105 = load %struct.RClass*, %struct.RClass** %6, align 8
  %106 = load i32, i32* @MRB_TT_CLASS, align 4
  %107 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %105, i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = load %struct.RClass*, %struct.RClass** %3, align 8
  %110 = load i32, i32* @mrb_bob_init, align 4
  %111 = call i32 (...) @MRB_ARGS_NONE()
  %112 = call i32 @mrb_define_method(%struct.TYPE_14__* %108, %struct.RClass* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = load %struct.RClass*, %struct.RClass** %3, align 8
  %115 = load i32, i32* @mrb_bob_not, align 4
  %116 = call i32 (...) @MRB_ARGS_NONE()
  %117 = call i32 @mrb_define_method(%struct.TYPE_14__* %113, %struct.RClass* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = load %struct.RClass*, %struct.RClass** %3, align 8
  %120 = load i32, i32* @mrb_obj_equal_m, align 4
  %121 = call i32 @MRB_ARGS_REQ(i32 1)
  %122 = call i32 @mrb_define_method(%struct.TYPE_14__* %118, %struct.RClass* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %3, align 8
  %125 = load i32, i32* @mrb_obj_not_equal_m, align 4
  %126 = call i32 @MRB_ARGS_REQ(i32 1)
  %127 = call i32 @mrb_define_method(%struct.TYPE_14__* %123, %struct.RClass* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = load %struct.RClass*, %struct.RClass** %3, align 8
  %130 = load i32, i32* @mrb_obj_id_m, align 4
  %131 = call i32 (...) @MRB_ARGS_NONE()
  %132 = call i32 @mrb_define_method(%struct.TYPE_14__* %128, %struct.RClass* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = load %struct.RClass*, %struct.RClass** %3, align 8
  %135 = load i32, i32* @mrb_f_send, align 4
  %136 = call i32 (...) @MRB_ARGS_ANY()
  %137 = call i32 @mrb_define_method(%struct.TYPE_14__* %133, %struct.RClass* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = load %struct.RClass*, %struct.RClass** %3, align 8
  %140 = load i32, i32* @mrb_obj_instance_eval, align 4
  %141 = call i32 (...) @MRB_ARGS_ANY()
  %142 = call i32 @mrb_define_method(%struct.TYPE_14__* %138, %struct.RClass* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %144 = load %struct.RClass*, %struct.RClass** %6, align 8
  %145 = load i32, i32* @mrb_class_new_class, align 4
  %146 = call i32 @MRB_ARGS_OPT(i32 1)
  %147 = call i32 @mrb_define_class_method(%struct.TYPE_14__* %143, %struct.RClass* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = load %struct.RClass*, %struct.RClass** %6, align 8
  %150 = load i32, i32* @mrb_class_superclass, align 4
  %151 = call i32 (...) @MRB_ARGS_NONE()
  %152 = call i32 @mrb_define_method(%struct.TYPE_14__* %148, %struct.RClass* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %154 = load %struct.RClass*, %struct.RClass** %6, align 8
  %155 = load i32, i32* @mrb_instance_new, align 4
  %156 = call i32 (...) @MRB_ARGS_ANY()
  %157 = call i32 @mrb_define_method(%struct.TYPE_14__* %153, %struct.RClass* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %159 = load %struct.RClass*, %struct.RClass** %6, align 8
  %160 = load i32, i32* @mrb_class_initialize, align 4
  %161 = call i32 @MRB_ARGS_OPT(i32 1)
  %162 = call i32 @mrb_define_method(%struct.TYPE_14__* %158, %struct.RClass* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %164 = load %struct.RClass*, %struct.RClass** %6, align 8
  %165 = load i32, i32* @mrb_bob_init, align 4
  %166 = call i32 @MRB_ARGS_REQ(i32 1)
  %167 = call i32 @mrb_define_method(%struct.TYPE_14__* %163, %struct.RClass* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load %struct.RClass*, %struct.RClass** %5, align 8
  %169 = load i32, i32* @MRB_TT_MODULE, align 4
  %170 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %168, i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %172 = load %struct.RClass*, %struct.RClass** %5, align 8
  %173 = load i32, i32* @mrb_mod_extend_object, align 4
  %174 = call i32 @MRB_ARGS_REQ(i32 1)
  %175 = call i32 @mrb_define_method(%struct.TYPE_14__* %171, %struct.RClass* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = load %struct.RClass*, %struct.RClass** %5, align 8
  %178 = load i32, i32* @mrb_bob_init, align 4
  %179 = call i32 @MRB_ARGS_REQ(i32 1)
  %180 = call i32 @mrb_define_method(%struct.TYPE_14__* %176, %struct.RClass* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %182 = load %struct.RClass*, %struct.RClass** %5, align 8
  %183 = load i32, i32* @mrb_bob_init, align 4
  %184 = call i32 @MRB_ARGS_REQ(i32 1)
  %185 = call i32 @mrb_define_method(%struct.TYPE_14__* %181, %struct.RClass* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %187 = load %struct.RClass*, %struct.RClass** %5, align 8
  %188 = load i32, i32* @mrb_mod_prepend_features, align 4
  %189 = call i32 @MRB_ARGS_REQ(i32 1)
  %190 = call i32 @mrb_define_method(%struct.TYPE_14__* %186, %struct.RClass* %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %192 = load %struct.RClass*, %struct.RClass** %5, align 8
  %193 = load i32, i32* @mrb_mod_include_p, align 4
  %194 = call i32 @MRB_ARGS_REQ(i32 1)
  %195 = call i32 @mrb_define_method(%struct.TYPE_14__* %191, %struct.RClass* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %197 = load %struct.RClass*, %struct.RClass** %5, align 8
  %198 = load i32, i32* @mrb_mod_append_features, align 4
  %199 = call i32 @MRB_ARGS_REQ(i32 1)
  %200 = call i32 @mrb_define_method(%struct.TYPE_14__* %196, %struct.RClass* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %202 = load %struct.RClass*, %struct.RClass** %5, align 8
  %203 = load i32, i32* @mrb_mod_module_eval, align 4
  %204 = call i32 (...) @MRB_ARGS_ANY()
  %205 = call i32 @mrb_define_method(%struct.TYPE_14__* %201, %struct.RClass* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %203, i32 %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = load %struct.RClass*, %struct.RClass** %5, align 8
  %208 = load i32, i32* @mrb_bob_init, align 4
  %209 = call i32 @MRB_ARGS_REQ(i32 1)
  %210 = call i32 @mrb_define_method(%struct.TYPE_14__* %206, %struct.RClass* %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %208, i32 %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = load %struct.RClass*, %struct.RClass** %5, align 8
  %213 = load i32, i32* @mrb_mod_initialize, align 4
  %214 = call i32 (...) @MRB_ARGS_NONE()
  %215 = call i32 @mrb_define_method(%struct.TYPE_14__* %211, %struct.RClass* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %217 = load %struct.RClass*, %struct.RClass** %5, align 8
  %218 = load i32, i32* @mrb_mod_module_eval, align 4
  %219 = call i32 (...) @MRB_ARGS_ANY()
  %220 = call i32 @mrb_define_method(%struct.TYPE_14__* %216, %struct.RClass* %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %222 = load %struct.RClass*, %struct.RClass** %5, align 8
  %223 = load i32, i32* @mrb_mod_module_function, align 4
  %224 = call i32 (...) @MRB_ARGS_ANY()
  %225 = call i32 @mrb_define_method(%struct.TYPE_14__* %221, %struct.RClass* %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %227 = load %struct.RClass*, %struct.RClass** %5, align 8
  %228 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %229 = call i32 (...) @MRB_ARGS_ANY()
  %230 = call i32 @mrb_define_method(%struct.TYPE_14__* %226, %struct.RClass* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %228, i32 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %232 = load %struct.RClass*, %struct.RClass** %5, align 8
  %233 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %234 = call i32 (...) @MRB_ARGS_ANY()
  %235 = call i32 @mrb_define_method(%struct.TYPE_14__* %231, %struct.RClass* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %233, i32 %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %237 = load %struct.RClass*, %struct.RClass** %5, align 8
  %238 = load i32, i32* @mrb_mod_dummy_visibility, align 4
  %239 = call i32 (...) @MRB_ARGS_ANY()
  %240 = call i32 @mrb_define_method(%struct.TYPE_14__* %236, %struct.RClass* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %238, i32 %239)
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %242 = load %struct.RClass*, %struct.RClass** %5, align 8
  %243 = load i32, i32* @mrb_mod_attr_reader, align 4
  %244 = call i32 (...) @MRB_ARGS_ANY()
  %245 = call i32 @mrb_define_method(%struct.TYPE_14__* %241, %struct.RClass* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %243, i32 %244)
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %247 = load %struct.RClass*, %struct.RClass** %5, align 8
  %248 = load i32, i32* @mrb_mod_attr_writer, align 4
  %249 = call i32 (...) @MRB_ARGS_ANY()
  %250 = call i32 @mrb_define_method(%struct.TYPE_14__* %246, %struct.RClass* %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %248, i32 %249)
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %252 = load %struct.RClass*, %struct.RClass** %5, align 8
  %253 = load i32, i32* @mrb_mod_to_s, align 4
  %254 = call i32 (...) @MRB_ARGS_NONE()
  %255 = call i32 @mrb_define_method(%struct.TYPE_14__* %251, %struct.RClass* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %257 = load %struct.RClass*, %struct.RClass** %5, align 8
  %258 = load i32, i32* @mrb_mod_to_s, align 4
  %259 = call i32 (...) @MRB_ARGS_NONE()
  %260 = call i32 @mrb_define_method(%struct.TYPE_14__* %256, %struct.RClass* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %258, i32 %259)
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %262 = load %struct.RClass*, %struct.RClass** %5, align 8
  %263 = load i32, i32* @mrb_mod_alias, align 4
  %264 = call i32 (...) @MRB_ARGS_ANY()
  %265 = call i32 @mrb_define_method(%struct.TYPE_14__* %261, %struct.RClass* %262, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i32 %263, i32 %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %267 = load %struct.RClass*, %struct.RClass** %5, align 8
  %268 = load i32, i32* @mrb_mod_ancestors, align 4
  %269 = call i32 (...) @MRB_ARGS_NONE()
  %270 = call i32 @mrb_define_method(%struct.TYPE_14__* %266, %struct.RClass* %267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %268, i32 %269)
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %272 = load %struct.RClass*, %struct.RClass** %5, align 8
  %273 = load i32, i32* @mrb_mod_undef, align 4
  %274 = call i32 (...) @MRB_ARGS_ANY()
  %275 = call i32 @mrb_define_method(%struct.TYPE_14__* %271, %struct.RClass* %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 %273, i32 %274)
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %277 = load %struct.RClass*, %struct.RClass** %5, align 8
  %278 = load i32, i32* @mrb_mod_const_defined, align 4
  %279 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %280 = call i32 @mrb_define_method(%struct.TYPE_14__* %276, %struct.RClass* %277, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 %278, i32 %279)
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %282 = load %struct.RClass*, %struct.RClass** %5, align 8
  %283 = load i32, i32* @mrb_mod_const_get, align 4
  %284 = call i32 @MRB_ARGS_REQ(i32 1)
  %285 = call i32 @mrb_define_method(%struct.TYPE_14__* %281, %struct.RClass* %282, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %287 = load %struct.RClass*, %struct.RClass** %5, align 8
  %288 = load i32, i32* @mrb_mod_const_set, align 4
  %289 = call i32 @MRB_ARGS_REQ(i32 2)
  %290 = call i32 @mrb_define_method(%struct.TYPE_14__* %286, %struct.RClass* %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i32 %288, i32 %289)
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %292 = load %struct.RClass*, %struct.RClass** %5, align 8
  %293 = load i32, i32* @mrb_mod_remove_const, align 4
  %294 = call i32 @MRB_ARGS_REQ(i32 1)
  %295 = call i32 @mrb_define_method(%struct.TYPE_14__* %291, %struct.RClass* %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 %293, i32 %294)
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %297 = load %struct.RClass*, %struct.RClass** %5, align 8
  %298 = load i32, i32* @mrb_mod_const_missing, align 4
  %299 = call i32 @MRB_ARGS_REQ(i32 1)
  %300 = call i32 @mrb_define_method(%struct.TYPE_14__* %296, %struct.RClass* %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i32 %298, i32 %299)
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = load %struct.RClass*, %struct.RClass** %5, align 8
  %303 = load i32, i32* @mrb_mod_method_defined, align 4
  %304 = call i32 @MRB_ARGS_REQ(i32 1)
  %305 = call i32 @mrb_define_method(%struct.TYPE_14__* %301, %struct.RClass* %302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i32 %303, i32 %304)
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %307 = load %struct.RClass*, %struct.RClass** %5, align 8
  %308 = load i32, i32* @mod_define_method, align 4
  %309 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %310 = call i32 @mrb_define_method(%struct.TYPE_14__* %306, %struct.RClass* %307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %308, i32 %309)
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %312 = load %struct.RClass*, %struct.RClass** %5, align 8
  %313 = load i32, i32* @mrb_mod_eqq, align 4
  %314 = call i32 @MRB_ARGS_REQ(i32 1)
  %315 = call i32 @mrb_define_method(%struct.TYPE_14__* %311, %struct.RClass* %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 %313, i32 %314)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %317 = load %struct.RClass*, %struct.RClass** %6, align 8
  %318 = call i32 @mrb_undef_method(%struct.TYPE_14__* %316, %struct.RClass* %317, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %320 = load %struct.RClass*, %struct.RClass** %6, align 8
  %321 = call i32 @mrb_undef_method(%struct.TYPE_14__* %319, %struct.RClass* %320, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %323 = load i32, i32* @MRB_TT_OBJECT, align 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 1
  %326 = load %struct.RClass*, %struct.RClass** %325, align 8
  %327 = call i64 @mrb_obj_alloc(%struct.TYPE_14__* %322, i32 %323, %struct.RClass* %326)
  %328 = inttoptr i64 %327 to %struct.RObject*
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  store %struct.RObject* %328, %struct.RObject** %330, align 8
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load %struct.RObject*, %struct.RObject** %333, align 8
  %335 = load i32, i32* @inspect_main, align 4
  %336 = call i32 (...) @MRB_ARGS_NONE()
  %337 = call i32 @mrb_define_singleton_method(%struct.TYPE_14__* %331, %struct.RObject* %334, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %335, i32 %336)
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 0
  %341 = load %struct.RObject*, %struct.RObject** %340, align 8
  %342 = load i32, i32* @inspect_main, align 4
  %343 = call i32 (...) @MRB_ARGS_NONE()
  %344 = call i32 @mrb_define_singleton_method(%struct.TYPE_14__* %338, %struct.RObject* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %342, i32 %343)
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load %struct.RObject*, %struct.RObject** %347, align 8
  %349 = load i32, i32* @top_define_method, align 4
  %350 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %351 = call i32 @mrb_define_singleton_method(%struct.TYPE_14__* %345, %struct.RObject* %348, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %349, i32 %350)
  ret void
}

declare dso_local %struct.RClass* @boot_defclass(%struct.TYPE_14__*, %struct.RClass*) #1

declare dso_local i32 @make_metaclass(%struct.TYPE_14__*, %struct.RClass*) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_14__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_class_name_class(%struct.TYPE_14__*, i32*, %struct.RClass*, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_14__*, i8*, %struct.RClass*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_14__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_14__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @mrb_undef_method(%struct.TYPE_14__*, %struct.RClass*, i8*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_14__*, i32, %struct.RClass*) #1

declare dso_local i32 @mrb_define_singleton_method(%struct.TYPE_14__*, %struct.RObject*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
