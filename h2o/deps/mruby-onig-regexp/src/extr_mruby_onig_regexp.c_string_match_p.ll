; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_match_p.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_match_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"d|i\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@ONIG_MISMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @string_match_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_match_p(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8, i32* @mrb_onig_regexp_type, i64* %7)
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @RSTRING_LEN(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %2
  %25 = call i32 (...) @mrb_nil_value()
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %18, %15
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @mrb_nil_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @mrb_nil_value()
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mrb_string_type(i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @RSTRING_PTR(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @RSTRING_LEN(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @RSTRING_LEN(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i64 @onig_search(i32 %39, i32* %40, i32* %45, i32* %48, i32* %53, i32* null, i32 0)
  %55 = load i64, i64* @ONIG_MISMATCH, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @mrb_bool_value(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %32, %30, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i64*) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_string_type(i32*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_bool_value(i32) #1

declare dso_local i64 @onig_search(i32, i32*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
