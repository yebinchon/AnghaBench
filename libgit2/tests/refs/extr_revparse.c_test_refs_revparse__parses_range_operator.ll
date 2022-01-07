; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__parses_range_operator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__parses_range_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@GIT_REVPARSE_SINGLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"HEAD~3..HEAD\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@GIT_REVPARSE_RANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"HEAD~3...HEAD\00", align 1
@GIT_REVPARSE_MERGE_BASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"HEAD~3..\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"HEAD~3...\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"..HEAD~3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"...HEAD~3\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__parses_range_operator() #0 {
  %1 = load i32, i32* @GIT_REVPARSE_SINGLE, align 4
  %2 = call i32 @test_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %1)
  %3 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %4 = call i32 @test_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %6 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @test_id(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %10 = call i32 @test_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %12 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @test_id(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %16 = call i32 @test_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %18 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @test_id(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %22 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @test_id(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @test_invalid_revspec(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_id(i8*, i8*, i8*, i32) #1

declare dso_local i32 @test_invalid_revspec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
