; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_match_data_actual_index.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_match_data_actual_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@mrb_onig_region_type = common dso_local global i32 0, align 4
@E_INDEX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"undefined group name reference: %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @match_data_actual_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_data_actual_index(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @mrb_fixnum_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mrb_fixnum(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @mrb_symbol_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mrb_symbol(i32 %25)
  %27 = call i8* @mrb_sym2name_len(i32* %24, i32 %26, i32* %10)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %9, align 8
  br label %49

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @mrb_string_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @mrb_string_value_ptr(i32* %37, i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8* %44, i8** %9, align 8
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @mrb_assert(i32 %46)
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @mrb_assert(i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @mrb_intern_lit(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @mrb_iv_get(i32* %59, i32 %60, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @mrb_nil_p(i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @mrb_assert(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = call i32* @DATA_TYPE(i32 %70)
  %72 = icmp eq i32* %71, @mrb_onig_regexp_type
  %73 = zext i1 %72 to i32
  %74 = call i32 @mrb_assert(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32* @DATA_TYPE(i32 %75)
  %77 = icmp eq i32* %76, @mrb_onig_region_type
  %78 = zext i1 %77 to i32
  %79 = call i32 @mrb_assert(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @DATA_PTR(i32 %80)
  %82 = trunc i64 %81 to i32
  %83 = load i8*, i8** %8, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @DATA_PTR(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @onig_name_to_backref_number(i32 %82, i32* %84, i32* %86, i32* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %55
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @E_INDEX_ERROR, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @mrb_raisef(i32* %94, i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %55
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i64 @mrb_symbol_p(i32) #1

declare dso_local i8* @mrb_sym2name_len(i32*, i32, i32*) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i8* @mrb_string_value_ptr(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32* @DATA_TYPE(i32) #1

declare dso_local i32 @onig_name_to_backref_number(i32, i32*, i32*, i32*) #1

declare dso_local i64 @DATA_PTR(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
