; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_tell.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_tell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_dir = type { i32 }

@mrb_dir_type = common dso_local global i32 0, align 4
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"closed directory\00", align 1
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_dir_tell(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrb_dir*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @mrb_get_datatype(i32* %8, i32 %9, i32* @mrb_dir_type)
  %11 = inttoptr i64 %10 to %struct.mrb_dir*
  store %struct.mrb_dir* %11, %struct.mrb_dir** %6, align 8
  %12 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %13 = icmp ne %struct.mrb_dir* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @mrb_nil_value()
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %18 = getelementptr inbounds %struct.mrb_dir, %struct.mrb_dir* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @E_IO_ERROR, align 4
  %24 = call i32 @mrb_raise(i32* %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %27 = getelementptr inbounds %struct.mrb_dir, %struct.mrb_dir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @telldir(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @mrb_fixnum_value(i64 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @mrb_get_datatype(i32*, i32, i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @telldir(i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
