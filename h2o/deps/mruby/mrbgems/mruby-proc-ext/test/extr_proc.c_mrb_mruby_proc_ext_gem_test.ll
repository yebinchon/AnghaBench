; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/test/extr_proc.c_mrb_mruby_proc_ext_gem_test.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-proc-ext/test/extr_proc.c_mrb_mruby_proc_ext_gem_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ProcExtTest\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mrb_proc_new_cfunc_with_env\00", align 1
@proc_new_cfunc_with_env = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mrb_cfunc_env_get\00", align 1
@cfunc_env_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"cfunc_without_env\00", align 1
@cfunc_without_env = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_proc_ext_gem_test(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.RClass*, %struct.RClass** %3, align 8
  %11 = load i32, i32* @proc_new_cfunc_with_env, align 4
  %12 = call i32 @MRB_ARGS_REQ(i32 1)
  %13 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %9, %struct.RClass* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @cfunc_env_get, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 2)
  %18 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load i32, i32* @cfunc_without_env, align 4
  %22 = call i32 (...) @MRB_ARGS_NONE()
  %23 = call i32 @mrb_define_module_function(%struct.TYPE_5__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @mrb_define_module_function(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
