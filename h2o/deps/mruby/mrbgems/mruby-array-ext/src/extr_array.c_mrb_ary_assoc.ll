; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_assoc.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_assoc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @RARRAY_LEN(i32 %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @RARRAY_PTR(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mrb_check_array_type(i32* %17, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mrb_nil_p(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @RARRAY_LEN(i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @RARRAY_PTR(i32 %33)
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @mrb_equal(i32* %32, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %48

42:                                               ; preds = %31, %27, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %11

46:                                               ; preds = %11
  %47 = call i32 (...) @mrb_nil_value()
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_check_array_type(i32*, i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i64 @mrb_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
