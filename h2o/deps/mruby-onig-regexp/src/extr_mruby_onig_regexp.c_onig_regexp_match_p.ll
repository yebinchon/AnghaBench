; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_match_p.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_match_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"o|i\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@ONIG_MISMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_match_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_match_p(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @mrb_nil_value()
  store i32 %10, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6, i64* %7)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mrb_nil_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @mrb_nil_value()
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_operand(i32* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RSTRING_LEN(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %18
  %34 = call i32 (...) @mrb_nil_value()
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %27, %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @Data_Get_Struct(i32* %36, i32 %37, i32* @mrb_onig_regexp_type, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @RSTRING_PTR(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @RSTRING_LEN(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @RSTRING_LEN(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = call i64 @onig_search(i32 %43, i32* %44, i32* %49, i32* %52, i32* %57, i32* null, i32 0)
  %59 = load i64, i64* @ONIG_MISMATCH, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @mrb_bool_value(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %35, %33, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i64*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @reg_operand(i32*, i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_bool_value(i32) #1

declare dso_local i64 @onig_search(i32, i32*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
