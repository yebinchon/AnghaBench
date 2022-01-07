; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_dir = type { i32* }

@mrb_dir_type = common dso_local global i32 0, align 4
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"closed directory\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_dir_close(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrb_dir*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @mrb_get_datatype(i32* %7, i32 %8, i32* @mrb_dir_type)
  %10 = inttoptr i64 %9 to %struct.mrb_dir*
  store %struct.mrb_dir* %10, %struct.mrb_dir** %6, align 8
  %11 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %12 = icmp ne %struct.mrb_dir* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @mrb_nil_value()
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %17 = getelementptr inbounds %struct.mrb_dir, %struct.mrb_dir* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @E_IO_ERROR, align 4
  %23 = call i32 @mrb_raise(i32* %21, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %26 = getelementptr inbounds %struct.mrb_dir, %struct.mrb_dir* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @closedir(i32* %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @mrb_sys_fail(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.mrb_dir*, %struct.mrb_dir** %6, align 8
  %35 = getelementptr inbounds %struct.mrb_dir, %struct.mrb_dir* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = call i32 (...) @mrb_nil_value()
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @mrb_get_datatype(i32*, i32, i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
