; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__reading_the_reflog_from_a_reference_with_no_log_returns_an_empty_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__reading_the_reflog_from_a_reference_with_no_log_returns_an_empty_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"refs/heads/subtrees\00", align 1
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_REFLOG_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_reflog__reading_the_reflog_from_a_reference_with_no_log_returns_an_empty_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_path(i32 %5)
  %7 = load i32, i32* @GIT_REFLOG_DIR, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @git_buf_join_n(i32* %3, i8 signext 47, i32 3, i32 %6, i32 %7, i8* %8)
  %10 = call i32 @git_buf_cstr(i32* %3)
  %11 = call i32 @git_path_isfile(i32 %10)
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @git_reflog_read(i32** %1, i32 %13, i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @git_reflog_entrycount(i32* %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @cl_assert_equal_i(i32 0, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_reflog_free(i32* %21)
  %23 = call i32 @git_buf_dispose(i32* %3)
  ret void
}

declare dso_local i32 @git_buf_join_n(i32*, i8 signext, i32, i32, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_path_isfile(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
