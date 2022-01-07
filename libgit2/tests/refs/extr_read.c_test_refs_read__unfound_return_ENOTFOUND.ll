; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__unfound_return_ENOTFOUND.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__unfound_return_ENOTFOUND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"TEST_MASTER\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"refs/test/master\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"refs/tags/test/master\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"refs/tags/test/farther/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_read__unfound_return_ENOTFOUND() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GIT_ENOTFOUND, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_reference_lookup(i32** %1, i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 %3, i32 %5)
  %7 = load i32, i32* @GIT_ENOTFOUND, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_reference_lookup(i32** %1, i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_assert_equal_i(i32 %7, i32 %9)
  %11 = load i32, i32* @GIT_ENOTFOUND, align 4
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_reference_lookup(i32** %1, i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 %11, i32 %13)
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_reference_lookup(i32** %1, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @cl_assert_equal_i(i32 %15, i32 %17)
  %19 = load i32, i32* @GIT_ENOTFOUND, align 4
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_reference_name_to_id(i32* %2, i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_assert_equal_i(i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
