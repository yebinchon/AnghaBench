; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-kernel-ext/src/extr_kernel.c_mrb_mruby_kernel_ext_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-kernel-ext/src/extr_kernel.c_mrb_mruby_kernel_ext_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@mrb_f_raise = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@mrb_f_caller = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"__method__\00", align 1
@mrb_f_method = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@mrb_f_integer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@mrb_f_float = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@mrb_f_string = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@mrb_f_array = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@mrb_f_hash = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"itself\00", align 1
@mrb_f_itself = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_kernel_ext_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.RClass*, %struct.RClass** %5, align 8
  store %struct.RClass* %6, %struct.RClass** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.RClass*, %struct.RClass** %3, align 8
  %9 = load i32, i32* @mrb_f_raise, align 4
  %10 = call i32 @MRB_ARGS_OPT(i32 2)
  %11 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %7, %struct.RClass* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @mrb_f_caller, align 4
  %15 = call i32 @MRB_ARGS_OPT(i32 2)
  %16 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_f_method, align 4
  %20 = call i32 (...) @MRB_ARGS_NONE()
  %21 = call i32 @mrb_define_method(%struct.TYPE_5__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_f_integer, align 4
  %25 = call i32 (...) @MRB_ARGS_ANY()
  %26 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = load %struct.RClass*, %struct.RClass** %3, align 8
  %29 = load i32, i32* @mrb_f_float, align 4
  %30 = call i32 @MRB_ARGS_REQ(i32 1)
  %31 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load %struct.RClass*, %struct.RClass** %3, align 8
  %34 = load i32, i32* @mrb_f_string, align 4
  %35 = call i32 @MRB_ARGS_REQ(i32 1)
  %36 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %32, %struct.RClass* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = load %struct.RClass*, %struct.RClass** %3, align 8
  %39 = load i32, i32* @mrb_f_array, align 4
  %40 = call i32 @MRB_ARGS_REQ(i32 1)
  %41 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %37, %struct.RClass* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %3, align 8
  %44 = load i32, i32* @mrb_f_hash, align 4
  %45 = call i32 @MRB_ARGS_REQ(i32 1)
  %46 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %42, %struct.RClass* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = load %struct.RClass*, %struct.RClass** %3, align 8
  %49 = load i32, i32* @mrb_f_itself, align 4
  %50 = call i32 (...) @MRB_ARGS_NONE()
  %51 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %47, %struct.RClass* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @mrb_define_module_function(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
