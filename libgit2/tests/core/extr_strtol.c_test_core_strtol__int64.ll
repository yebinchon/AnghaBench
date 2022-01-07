; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__int64.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  +123 \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  +2147483647 \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  -2147483648 \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"  2147483657 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"  -2147483657 \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" 9223372036854775807  \00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"   -9223372036854775808  \00", align 1
@INT64_MIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"   0x7fffffffffffffff  \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"   -0x8000000000000000   \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"1a\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"1A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"x10x\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"0x8000000000000000\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"-0x8000000000000001\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_strtol__int64() #0 {
  %1 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 123, i32 10)
  %2 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 123, i32 10)
  %3 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 2147483647, i32 10)
  %4 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 -2147483648, i32 10)
  %5 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 -2147483639, i32 10)
  %6 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 2147483639, i32 10)
  %7 = load i32, i32* @INT64_MAX, align 4
  %8 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %7, i32 10)
  %9 = load i32, i32* @INT64_MIN, align 4
  %10 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %9, i32 10)
  %11 = load i32, i32* @INT64_MAX, align 4
  %12 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %11, i32 16)
  %13 = load i32, i32* @INT64_MIN, align 4
  %14 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %13, i32 16)
  %15 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 26, i32 16)
  %16 = call i32 @assert_l64_parses(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 26, i32 16)
  %17 = call i32 @assert_l64_fails(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32 10)
  %18 = call i32 @assert_l64_fails(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 10)
  %19 = call i32 @assert_l64_fails(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %20 = call i32 @assert_l64_fails(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 16)
  %21 = call i32 @assert_l64_fails(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 16)
  ret void
}

declare dso_local i32 @assert_l64_parses(i8*, i32, i32) #1

declare dso_local i32 @assert_l64_fails(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
