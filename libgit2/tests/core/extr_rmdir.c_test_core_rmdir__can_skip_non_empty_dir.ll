; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__can_skip_non_empty_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__can_skip_non_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@empty_tmp_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/two/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@GIT_RMDIR_SKIP_NONEMPTY = common dso_local global i32 0, align 4
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_rmdir__can_skip_non_empty_dir() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @empty_tmp_dir, align 4
  %4 = call i32 @git_buf_joinpath(i32* %1, i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_buf_cstr(i32* %1)
  %7 = call i32 @cl_git_mkfile(i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @empty_tmp_dir, align 4
  %9 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %10 = call i32 @git_futils_rmdir_r(i32 %8, i32* null, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_buf_cstr(i32* %1)
  %13 = call i32 @git_path_exists(i32 %12)
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @empty_tmp_dir, align 4
  %18 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %19 = call i32 @git_futils_rmdir_r(i32 %17, i32* null, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @empty_tmp_dir, align 4
  %22 = call i32 @git_path_exists(i32 %21)
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_futils_rmdir_r(i32, i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
