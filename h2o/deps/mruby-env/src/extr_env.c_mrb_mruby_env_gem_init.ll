; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_mruby_env_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-env/src/extr_env.c_mrb_mruby_env_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.RObject = type { i32 }
%struct.RClass = type { i32 }

@MRB_TT_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Enumerable\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@mrb_env_aget = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@mrb_env_aset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"has_key?\00", align 1
@mrb_env_has_key = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@mrb_env_inspect = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@mrb_env_keys = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@mrb_env_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"to_a\00", align 1
@mrb_env_to_a = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"to_hash\00", align 1
@mrb_env_to_hash = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@mrb_env_to_s = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@mrb_env_values = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_env_gem_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.RObject*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = load i32, i32* @MRB_TT_OBJECT, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @mrb_obj_alloc(%struct.TYPE_9__* %4, i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to %struct.RObject*
  store %struct.RObject* %10, %struct.RObject** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.RObject*, %struct.RObject** %3, align 8
  %13 = bitcast %struct.RObject* %12 to %struct.RClass*
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @mrb_class_get(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @mrb_include_module(%struct.TYPE_9__* %11, %struct.RClass* %13, i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = load %struct.RObject*, %struct.RObject** %3, align 8
  %19 = load i32, i32* @mrb_env_aget, align 4
  %20 = call i32 @MRB_ARGS_REQ(i32 1)
  %21 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %17, %struct.RObject* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load %struct.RObject*, %struct.RObject** %3, align 8
  %24 = load i32, i32* @mrb_env_aset, align 4
  %25 = call i32 @MRB_ARGS_REQ(i32 2)
  %26 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %22, %struct.RObject* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load %struct.RObject*, %struct.RObject** %3, align 8
  %29 = load i32, i32* @mrb_env_has_key, align 4
  %30 = call i32 @MRB_ARGS_REQ(i32 1)
  %31 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %27, %struct.RObject* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = load %struct.RObject*, %struct.RObject** %3, align 8
  %34 = load i32, i32* @mrb_env_inspect, align 4
  %35 = call i32 (...) @MRB_ARGS_NONE()
  %36 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %32, %struct.RObject* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = load %struct.RObject*, %struct.RObject** %3, align 8
  %39 = load i32, i32* @mrb_env_keys, align 4
  %40 = call i32 (...) @MRB_ARGS_NONE()
  %41 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %37, %struct.RObject* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = load %struct.RObject*, %struct.RObject** %3, align 8
  %44 = load i32, i32* @mrb_env_size, align 4
  %45 = call i32 (...) @MRB_ARGS_NONE()
  %46 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %42, %struct.RObject* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = load %struct.RObject*, %struct.RObject** %3, align 8
  %49 = load i32, i32* @mrb_env_aset, align 4
  %50 = call i32 @MRB_ARGS_REQ(i32 2)
  %51 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %47, %struct.RObject* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = load %struct.RObject*, %struct.RObject** %3, align 8
  %54 = load i32, i32* @mrb_env_to_a, align 4
  %55 = call i32 (...) @MRB_ARGS_NONE()
  %56 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %52, %struct.RObject* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = load %struct.RObject*, %struct.RObject** %3, align 8
  %59 = load i32, i32* @mrb_env_to_hash, align 4
  %60 = call i32 (...) @MRB_ARGS_NONE()
  %61 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %57, %struct.RObject* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = load %struct.RObject*, %struct.RObject** %3, align 8
  %64 = load i32, i32* @mrb_env_to_s, align 4
  %65 = call i32 (...) @MRB_ARGS_NONE()
  %66 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %62, %struct.RObject* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = load %struct.RObject*, %struct.RObject** %3, align 8
  %69 = load i32, i32* @mrb_env_values, align 4
  %70 = call i32 (...) @MRB_ARGS_NONE()
  %71 = call i32 @mrb_define_singleton_method(%struct.TYPE_9__* %67, %struct.RObject* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = load %struct.RObject*, %struct.RObject** %3, align 8
  %74 = call i32 @mrb_obj_value(%struct.RObject* %73)
  %75 = call i32 @mrb_define_global_const(%struct.TYPE_9__* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mrb_include_module(%struct.TYPE_9__*, %struct.RClass*, i32) #1

declare dso_local i32 @mrb_class_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_define_singleton_method(%struct.TYPE_9__*, %struct.RObject*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @mrb_define_global_const(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RObject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
