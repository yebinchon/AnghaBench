; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__symlink_depth.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__symlink_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"linkdir\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"linkdir/link\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_filebuf__symlink_depth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %5 = call i32 (...) @clar_sandbox_path()
  %6 = call i32 @git_path_supports_symlinks(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @cl_skip()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @p_mkdir(i8* %11, i32 511)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @p_symlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @git_filebuf_open(i32* %1, i8* %17, i32 0, i32 438)
  %19 = call i32 @cl_git_fail(i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %22 = call i32 @git_futils_rmdir_r(i8* %20, i32* null, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  ret void
}

declare dso_local i32 @git_path_supports_symlinks(i32) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @p_symlink(i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
