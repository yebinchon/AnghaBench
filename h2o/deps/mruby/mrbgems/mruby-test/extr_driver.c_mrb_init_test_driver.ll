; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-test/extr_driver.c_mrb_init_test_driver.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-test/extr_driver.c_mrb_init_test_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.RClass* }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"__t_printstr__\00", align 1
@mrb_t_printstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Mrbtest\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FIXNUM_MAX\00", align 1
@MRB_INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"FIXNUM_MIN\00", align 1
@MRB_INT_MIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"FIXNUM_BIT\00", align 1
@MRB_INT_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"FLOAT_TOLERANCE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"$mrbtest_verbose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_test_driver(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.RClass*, %struct.RClass** %8, align 8
  store %struct.RClass* %9, %struct.RClass** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.RClass*, %struct.RClass** %5, align 8
  %12 = load i32, i32* @mrb_t_printstr, align 4
  %13 = call i32 @MRB_ARGS_REQ(i32 1)
  %14 = call i32 @mrb_define_method(%struct.TYPE_9__* %10, %struct.RClass* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call %struct.RClass* @mrb_define_module(%struct.TYPE_9__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %16, %struct.RClass** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.RClass*, %struct.RClass** %6, align 8
  %19 = load i32, i32* @MRB_INT_MAX, align 4
  %20 = call i32 @mrb_fixnum_value(i32 %19)
  %21 = call i32 @mrb_define_const(%struct.TYPE_9__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.RClass*, %struct.RClass** %6, align 8
  %24 = load i32, i32* @MRB_INT_MIN, align 4
  %25 = call i32 @mrb_fixnum_value(i32 %24)
  %26 = call i32 @mrb_define_const(%struct.TYPE_9__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.RClass*, %struct.RClass** %6, align 8
  %29 = load i32, i32* @MRB_INT_BIT, align 4
  %30 = call i32 @mrb_fixnum_value(i32 %29)
  %31 = call i32 @mrb_define_const(%struct.TYPE_9__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load %struct.RClass*, %struct.RClass** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @mrb_float_value(%struct.TYPE_9__* %34, i32 0)
  %36 = call i32 @mrb_define_const(%struct.TYPE_9__* %32, %struct.RClass* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32 @mrb_intern_lit(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %43 = call i32 (...) @mrb_true_value()
  %44 = call i32 @mrb_gv_set(%struct.TYPE_9__* %40, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_9__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local %struct.RClass* @mrb_define_module(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_define_const(%struct.TYPE_9__*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_float_value(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mrb_gv_set(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mrb_true_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
