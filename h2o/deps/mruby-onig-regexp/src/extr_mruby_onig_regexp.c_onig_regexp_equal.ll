; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_equal.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OnigRegexp\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid OnigRegexp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_equal(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mrb_obj_equal(i32* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @mrb_true_value()
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @mrb_nil_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @mrb_false_value()
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @mrb_class_get(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @mrb_obj_is_kind_of(i32* %25, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (...) @mrb_false_value()
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @Data_Get_Struct(i32* %34, i32 %35, i32* @mrb_onig_regexp_type, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @Data_Get_Struct(i32* %38, i32 %39, i32* @mrb_onig_regexp_type, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %33
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %50 = call i32 @mrb_raise(i32* %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @onig_get_options(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @onig_get_options(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (...) @mrb_false_value()
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %51
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @mrb_intern_lit(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @mrb_iv_get(i32* %61, i32 %62, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @mrb_intern_lit(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @mrb_iv_get(i32* %66, i32 %67, i32 %69)
  %71 = call i64 @mrb_str_equal(i32* %60, i32 %65, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = call i32 (...) @mrb_true_value()
  br label %77

75:                                               ; preds = %59
  %76 = call i32 (...) @mrb_false_value()
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %57, %31, %22, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i32 @mrb_obj_is_kind_of(i32*, i32, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @onig_get_options(i32) #1

declare dso_local i64 @mrb_str_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
