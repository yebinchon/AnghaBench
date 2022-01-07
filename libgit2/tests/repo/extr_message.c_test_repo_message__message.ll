; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_message.c_test_repo_message__message.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_message.c_test_repo_message__message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@__const.test_repo_message__message.expected = private unnamed_addr constant [56 x i8] c"Test\0A\0AThis is a test of the emergency broadcast system\0A\00", align 16
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MERGE_MSG\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_message__message() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [56 x i8], align 16
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %5, i32* %2, align 4
  %6 = bitcast [56 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([56 x i8], [56 x i8]* @__const.test_repo_message__message.expected, i32 0, i32 0), i64 56, i1 false)
  %7 = load i32, i32* @_repo, align 4
  %8 = call i32 @git_repository_path(i32 %7)
  %9 = call i32 @git_buf_joinpath(i32* %1, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_buf_cstr(i32* %1)
  %12 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 0
  %13 = call i32 @cl_git_mkfile(i32 %11, i8* %12)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @git_repository_message(i32* %2, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 0
  %18 = call i32 @git_buf_cstr(i32* %2)
  %19 = call i32 @cl_assert_equal_s(i8* %17, i32 %18)
  %20 = call i32 @git_buf_dispose(i32* %2)
  %21 = call i32 @git_buf_cstr(i32* %1)
  %22 = call i32 @p_unlink(i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @GIT_ENOTFOUND, align 4
  %25 = load i32, i32* @_repo, align 4
  %26 = call i32 @git_repository_message(i32* %2, i32 %25)
  %27 = call i32 @cl_assert_equal_i(i32 %24, i32 %26)
  %28 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_repository_message(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @p_unlink(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
