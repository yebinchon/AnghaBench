; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__trivial_testrepo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__trivial_testrepo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"testrepo/.gitted\00", align 1
@g_blame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"branch_file.txt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"c47800c7\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"a65fedf3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_simple__trivial_testrepo() #0 {
  %1 = call i32 @cl_fixture(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @git_repository_open(i32* @g_repo, i32 %1)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_blame_file(i32* @g_blame, i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @g_blame, align 4
  %8 = call i32 @git_blame_get_hunk_count(i32 %7)
  %9 = call i32 @cl_assert_equal_i(i32 2, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i32, i32* @g_blame, align 4
  %12 = call i32 @check_blame_hunk_index(i32 %10, i32 %11, i32 0, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @g_blame, align 4
  %15 = call i32 @check_blame_hunk_index(i32 %13, i32 %14, i32 1, i32 2, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_blame_file(i32*, i32, i8*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_blame_get_hunk_count(i32) #1

declare dso_local i32 @check_blame_hunk_index(i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
