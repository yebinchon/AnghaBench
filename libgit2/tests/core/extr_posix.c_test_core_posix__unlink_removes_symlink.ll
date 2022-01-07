; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__unlink_removes_symlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__unlink_removes_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Dummy file.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"file-symlink\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dir-symlink\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_posix__unlink_removes_symlink() #0 {
  %1 = call i32 (...) @clar_sandbox_path()
  %2 = call i32 @git_path_supports_symlinks(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @clar__skip()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 511, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @p_symlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_must_pass(i32 %10)
  %12 = call i32 @p_symlink(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @cl_must_pass(i32 %12)
  %14 = call i32 @p_unlink(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_must_pass(i32 %14)
  %16 = call i32 @p_unlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_must_pass(i32 %16)
  %18 = call i32 @git_path_exists(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call i32 @git_path_exists(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_assert(i32 %20)
  %22 = call i32 @p_unlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @cl_must_pass(i32 %22)
  %24 = call i32 @p_rmdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @cl_must_pass(i32 %24)
  ret void
}

declare dso_local i32 @git_path_supports_symlinks(i32) #1

declare dso_local i32 @clar_sandbox_path(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_symlink(i8*, i8*) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @p_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
