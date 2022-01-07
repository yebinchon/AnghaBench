; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_wildmatch.c_test_core_wildmatch__additional_with_malformed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_wildmatch.c_test_core_wildmatch__additional_with_malformed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[\\\\-^]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[\\-_]\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[\\]]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"a[]b\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ab[\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"[!\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"[-\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"[-]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"[a-\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[!a-\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"[--A]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"[ --]\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"[---]\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"[------]\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"[a-e-n]\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"[!------]\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"[]-a]\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"[!]-a]\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"[a^bc]\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"-b]\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"[a-]b]\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"[\\]\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"[\\\\]\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"[!\\\\]\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"[A-\\\\]\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"aaabbb\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"b*a\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"aabcaa\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"*ba*\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"[,]\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"[\\\\,]\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"[,-.]\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"-.]\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"[\\1-\\3]\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"[[-\\]]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_wildmatch__additional_with_malformed() #0 {
  %1 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %2 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %3 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %4 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %5 = call i32 @assert_matches(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %6 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %7 = call i32 @assert_matches(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %8 = call i32 @assert_matches(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %9 = call i32 @assert_matches(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %10 = call i32 @assert_matches(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %11 = call i32 @assert_matches(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %12 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %13 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %14 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %15 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %16 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %17 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %18 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %19 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %20 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %21 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %22 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %23 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %24 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %25 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %26 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %27 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %28 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %29 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %30 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %31 = call i32 @assert_matches(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %32 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %33 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %34 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %35 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %36 = call i32 @assert_matches(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %37 = call i32 @assert_matches(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %38 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %39 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %40 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %41 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %42 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %43 = call i32 @assert_matches(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %44 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %45 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %46 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  %47 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %48 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %49 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  %50 = call i32 @assert_matches(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @assert_matches(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
