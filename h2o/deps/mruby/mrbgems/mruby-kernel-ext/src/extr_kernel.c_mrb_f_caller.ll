; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-kernel-ext/src/extr_kernel.c_mrb_f_caller.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-kernel-ext/src/extr_kernel.c_mrb_f_caller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"|oo\00", align 1
@MRB_TT_RANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"negative level (%S)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"negative size (%S)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_f_caller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_f_caller(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @mrb_get_backtrace(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RARRAY_LEN(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @mrb_get_args(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %87 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %62
  ]

22:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %12, align 4
  br label %88

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mrb_type(i32 %27)
  %29 = load i32, i32* @MRB_TT_RANGE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @mrb_range_beg_len(i32* %32, i32 %33, i32* %13, i32* %14, i32 %34, i32 %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %12, align 4
  br label %43

41:                                               ; preds = %31
  %42 = call i32 (...) @mrb_nil_value()
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %38
  br label %61

44:                                               ; preds = %26
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mrb_to_int(i32* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mrb_fixnum(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mrb_raisef(i32* %53, i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %43
  br label %88

62:                                               ; preds = %2
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mrb_to_int(i32* %63, i32 %64)
  %66 = call i32 @mrb_fixnum(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mrb_to_int(i32* %67, i32 %68)
  %70 = call i32 @mrb_fixnum(i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mrb_raisef(i32* %74, i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %62
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @mrb_raisef(i32* %82, i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  br label %88

87:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %86, %61, %22
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @mrb_ary_new(i32* %92)
  store i32 %93, i32* %3, align 4
  br label %102

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @mrb_fixnum_value(i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @mrb_fixnum_value(i32 %99)
  %101 = call i32 @mrb_funcall(i32* %95, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 %98, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %94, %91, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @mrb_get_backtrace(i32*) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i32 @mrb_range_beg_len(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_to_int(i32*, i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
