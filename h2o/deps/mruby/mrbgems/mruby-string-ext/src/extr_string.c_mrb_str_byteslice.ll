; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_byteslice.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_byteslice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"o|i\00", align 1
@TRUE = common dso_local global i32 0, align 4
@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%S out of range\00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"wrong type of argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_byteslice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_byteslice(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @mrb_get_argc(i32* %10)
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %7)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mrb_str_substr(i32* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @mrb_get_args(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mrb_type(i32 %24)
  switch i32 %25, label %58 [
    i32 128, label %26
    i32 129, label %48
    i32 130, label %52
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RSTRING_LEN(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @mrb_range_beg_len(i32* %29, i32 %30, i32* %9, i32* %7, i32 %31, i32 %32)
  switch i32 %33, label %46 [
    i32 0, label %34
    i32 1, label %35
    i32 2, label %41
  ]

34:                                               ; preds = %26
  br label %46

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mrb_str_substr(i32* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %26
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @E_RANGE_ERROR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mrb_raisef(i32* %42, i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %26, %41, %34
  %47 = call i32 (...) @mrb_nil_value()
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %21
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mrb_float(i32 %49)
  %51 = call i32 @mrb_fixnum_value(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %21, %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mrb_fixnum(i32 %55)
  %57 = call i32 @mrb_str_substr(i32* %53, i32 %54, i32 %56, i32 1)
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %21
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @E_TYPE_ERROR, align 4
  %61 = call i32 @mrb_raise(i32* %59, i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58
  %63 = call i32 (...) @mrb_nil_value()
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %52, %46, %35, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mrb_get_argc(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @mrb_str_substr(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_range_beg_len(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_float(i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
