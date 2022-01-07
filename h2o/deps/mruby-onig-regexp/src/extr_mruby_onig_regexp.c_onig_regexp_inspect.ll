; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_inspect.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_onig_regexp_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"@source\00", align 1
@ONIG_ENCODING_ASCII = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @onig_regexp_inspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onig_regexp_inspect(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @Data_Get_Struct(i32* %9, i32 %10, i32* @mrb_onig_regexp_type, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_str_new_lit(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @mrb_intern_lit(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @mrb_iv_get(i32* %15, i32 %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @RSTRING_PTR(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @RSTRING_LEN(i32 %25)
  %27 = call i32 @regexp_expr_str(i32* %20, i32 %21, i8* %24, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mrb_str_cat_lit(i32* %28, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @onig_get_options(i32 %32)
  %34 = call i64* @option_to_str(i8* %31, i32 %33)
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %41 = call i32 @mrb_str_cat_cstr(i32* %38, i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @onig_get_encoding(i32 %43)
  %45 = load i64, i64* @ONIG_ENCODING_ASCII, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mrb_str_cat_lit(i32* %48, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_iv_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @regexp_expr_str(i32*, i32, i8*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i64* @option_to_str(i8*, i32) #1

declare dso_local i32 @onig_get_options(i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i64 @onig_get_encoding(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
