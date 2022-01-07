; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_range_eq.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_range_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RRange = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @range_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_eq(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RRange*, align 8
  %7 = alloca %struct.RRange*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %8)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @mrb_obj_equal(i32* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @mrb_true_value()
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mrb_obj_class(i32* %23, i32 %24)
  %26 = call i32 @mrb_obj_is_instance_of(i32* %21, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 (...) @mrb_false_value()
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.RRange* @mrb_range_ptr(i32* %31, i32 %32)
  store %struct.RRange* %33, %struct.RRange** %6, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.RRange* @mrb_range_ptr(i32* %34, i32 %35)
  store %struct.RRange* %36, %struct.RRange** %7, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.RRange*, %struct.RRange** %6, align 8
  %39 = call i32 @RANGE_BEG(%struct.RRange* %38)
  %40 = load %struct.RRange*, %struct.RRange** %7, align 8
  %41 = call i32 @RANGE_BEG(%struct.RRange* %40)
  %42 = call i32 @mrb_funcall(i32* %37, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.RRange*, %struct.RRange** %6, align 8
  %45 = call i32 @RANGE_END(%struct.RRange* %44)
  %46 = load %struct.RRange*, %struct.RRange** %7, align 8
  %47 = call i32 @RANGE_END(%struct.RRange* %46)
  %48 = call i32 @mrb_funcall(i32* %43, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mrb_bool(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %30
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mrb_bool(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.RRange*, %struct.RRange** %6, align 8
  %58 = call i64 @RANGE_EXCL(%struct.RRange* %57)
  %59 = load %struct.RRange*, %struct.RRange** %7, align 8
  %60 = call i64 @RANGE_EXCL(%struct.RRange* %59)
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %52, %30
  %63 = call i32 (...) @mrb_false_value()
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %56
  %65 = call i32 (...) @mrb_true_value()
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62, %28, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_obj_is_instance_of(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local %struct.RRange* @mrb_range_ptr(i32*, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

declare dso_local i32 @mrb_bool(i32) #1

declare dso_local i64 @RANGE_EXCL(%struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
