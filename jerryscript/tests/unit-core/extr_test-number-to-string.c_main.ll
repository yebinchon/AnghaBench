; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-number-to-string.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-number-to-string.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"12345.123\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1e-45\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-2.5e+38\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__const.main.strings = private unnamed_addr constant [11 x i32*] [i32* bitcast ([2 x i8]* @.str to i32*), i32* bitcast ([4 x i8]* @.str.1 to i32*), i32* bitcast ([6 x i8]* @.str.2 to i32*), i32* bitcast ([10 x i8]* @.str.3 to i32*), i32* bitcast ([6 x i8]* @.str.4 to i32*), i32* bitcast ([9 x i8]* @.str.5 to i32*), i32* bitcast ([4 x i8]* @.str.6 to i32*), i32* bitcast ([9 x i8]* @.str.7 to i32*), i32* bitcast ([10 x i8]* @.str.8 to i32*), i32* bitcast ([2 x i8]* @.str.9 to i32*), i32* bitcast ([2 x i8]* @.str.9 to i32*)], align 16
@NAN = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x i32*], align 16
  %3 = alloca [11 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @TEST_INIT()
  %8 = bitcast [11 x i32*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([11 x i32*]* @__const.main.strings to i8*), i64 88, i1 false)
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %3, i64 0, i64 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 12345, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 12345, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 undef, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* @NAN, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @INFINITY, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @INFINITY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %47, %0
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 11
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %3, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %34 = call i32 @ecma_number_to_utf8_string(i32 %32, i32* %33, i32 256)
  store i32 %34, i32* %6, align 4
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [11 x i32*], [11 x i32*]* %2, i64 0, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @strncmp(i8* %36, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %51

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %24

50:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @TEST_INIT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ecma_number_to_utf8_string(i32, i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
