; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_stats.c_test_diff_stats__numstat.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_stats.c_test_diff_stats__numstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"3       2       file2.txt\0A4       2       file3.txt\0A\00", align 1
@_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cd471f0d8770371e1bc78bcbb38db4c7e4106bd2\00", align 1
@GIT_DIFF_STATS_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_stats__numstat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %3, i32* %1, align 4
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = call i32 @diff_stats_from_commit_oid(i32* @_stats, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %5 = load i32, i32* @_stats, align 4
  %6 = load i32, i32* @GIT_DIFF_STATS_NUMBER, align 4
  %7 = call i32 @git_diff_stats_to_buf(i32* %1, i32 %5, i32 %6, i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @git_buf_cstr(i32* %1)
  %11 = call i32 @cl_assert_equal_s(i8* %9, i32 %10)
  %12 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @diff_stats_from_commit_oid(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_stats_to_buf(i32*, i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
