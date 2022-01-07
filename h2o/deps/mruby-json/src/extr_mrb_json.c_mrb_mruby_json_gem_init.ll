; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_mruby_json_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_mruby_json_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@mrb_json_load = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@mrb_json_parse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"stringify\00", align 1
@mrb_json_generate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@mrb_json_dump = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pretty_generate\00", align 1
@mrb_json_pretty_generate = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"to_json\00", align 1
@mrb_json_to_json = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_json_gem_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = call %struct.RClass* @mrb_define_module(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %5, %struct.RClass** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.RClass*, %struct.RClass** %3, align 8
  %8 = load i32, i32* @mrb_json_load, align 4
  %9 = call i32 @MRB_ARGS_REQ(i32 1)
  %10 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %6, %struct.RClass* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.RClass*, %struct.RClass** %3, align 8
  %13 = load i32, i32* @mrb_json_parse, align 4
  %14 = call i32 @MRB_ARGS_REQ(i32 1)
  %15 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %11, %struct.RClass* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load %struct.RClass*, %struct.RClass** %3, align 8
  %18 = load i32, i32* @mrb_json_generate, align 4
  %19 = call i32 @MRB_ARGS_REQ(i32 1)
  %20 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %16, %struct.RClass* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load %struct.RClass*, %struct.RClass** %3, align 8
  %23 = load i32, i32* @mrb_json_dump, align 4
  %24 = call i32 @MRB_ARGS_REQ(i32 1)
  %25 = call i32 @MRB_ARGS_OPT(i32 1)
  %26 = or i32 %24, %25
  %27 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %21, %struct.RClass* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = load %struct.RClass*, %struct.RClass** %3, align 8
  %30 = load i32, i32* @mrb_json_generate, align 4
  %31 = call i32 @MRB_ARGS_REQ(i32 1)
  %32 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %28, %struct.RClass* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = load %struct.RClass*, %struct.RClass** %3, align 8
  %35 = load i32, i32* @mrb_json_pretty_generate, align 4
  %36 = call i32 @MRB_ARGS_REQ(i32 1)
  %37 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %33, %struct.RClass* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.RClass*, %struct.RClass** %40, align 8
  %42 = load i32, i32* @mrb_json_to_json, align 4
  %43 = call i32 (...) @MRB_ARGS_NONE()
  %44 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %38, %struct.RClass* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32 %43)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
