; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-string-to-number.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-string-to-number.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1e-45\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-2.5e+38\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-2.5e38\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"- 2.5e+38\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-2 .5e+38\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"-2. 5e+38\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"-2.5e+ 38\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"-2.5 e+38\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"-2.5e +38\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"   Infinity  \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__const.main.strings = private unnamed_addr constant [18 x i32*] [i32* bitcast ([2 x i8]* @.str to i32*), i32* bitcast ([4 x i8]* @.str.1 to i32*), i32* bitcast ([6 x i8]* @.str.2 to i32*), i32* bitcast ([6 x i8]* @.str.3 to i32*), i32* bitcast ([9 x i8]* @.str.4 to i32*), i32* bitcast ([8 x i8]* @.str.5 to i32*), i32* bitcast ([10 x i8]* @.str.6 to i32*), i32* bitcast ([10 x i8]* @.str.7 to i32*), i32* bitcast ([10 x i8]* @.str.8 to i32*), i32* bitcast ([10 x i8]* @.str.9 to i32*), i32* bitcast ([10 x i8]* @.str.10 to i32*), i32* bitcast ([10 x i8]* @.str.11 to i32*), i32* bitcast ([4 x i8]* @.str.12 to i32*), i32* bitcast ([4 x i8]* @.str.13 to i32*), i32* bitcast ([14 x i8]* @.str.14 to i32*), i32* bitcast ([10 x i8]* @.str.15 to i32*), i32* bitcast ([2 x i8]* @.str.16 to i32*), i32* bitcast ([2 x i8]* @.str.16 to i32*)], align 16
@NAN = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x i32*], align 16
  %3 = alloca [18 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @TEST_INIT()
  %7 = bitcast [18 x i32*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([18 x i32*]* @__const.main.strings to i8*), i64 144, i1 false)
  %8 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 0
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 12345, i64* %10, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 undef, i64* %12, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 undef, i64* %13, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i32, i32* @NAN, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds i64, i64* %14, i64 1
  %18 = load i32, i32* @NAN, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 1
  %21 = load i32, i32* @NAN, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 1
  %24 = load i32, i32* @NAN, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i64, i64* %23, i64 1
  %27 = load i32, i32* @NAN, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i64, i64* %26, i64 1
  %30 = load i32, i32* @NAN, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i64, i64* %29, i64 1
  %33 = load i32, i32* @NAN, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds i64, i64* %32, i64 1
  %36 = load i32, i32* @NAN, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i64, i64* %35, i64 1
  %39 = load i32, i32* @INFINITY, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds i64, i64* %38, i64 1
  %42 = load i32, i32* @INFINITY, align 4
  %43 = sub nsw i32 0, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %41, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 0, i64* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %81, %0
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 18
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [18 x i32*], [18 x i32*]* %2, i64 0, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [18 x i32*], [18 x i32*]* %2, i64 0, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @lit_zt_utf8_string_size(i32* %59)
  %61 = call i64 @ecma_utf8_string_to_number(i32* %55, i32 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %51
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ecma_number_is_nan(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [18 x i64], [18 x i64]* %3, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ecma_number_is_nan(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72, %68
  store i32 1, i32* %1, align 4
  br label %85

80:                                               ; preds = %72, %51
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %47

84:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @TEST_INIT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ecma_utf8_string_to_number(i32*, i32) #1

declare dso_local i32 @lit_zt_utf8_string_size(i32*) #1

declare dso_local i32 @ecma_number_is_nan(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
