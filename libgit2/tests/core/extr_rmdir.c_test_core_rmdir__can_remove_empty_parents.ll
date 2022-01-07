; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__can_remove_empty_parents.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__can_remove_empty_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@empty_tmp_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"/one/two_two/three/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"one/two_two/three/file.txt\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@GIT_RMDIR_EMPTY_PARENTS = common dso_local global i32 0, align 4
@GIT_RMDIR_EMPTY_HIERARCHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_rmdir__can_remove_empty_parents() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i8*, i8** @empty_tmp_dir, align 8
  %4 = call i32 @git_buf_joinpath(i32* %1, i8* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i8* @git_buf_cstr(i32* %1)
  %7 = call i32 @cl_git_mkfile(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i8* @git_buf_cstr(i32* %1)
  %9 = call i32 @git_path_isfile(i8* %8)
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i8*, i8** @empty_tmp_dir, align 8
  %12 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %13 = load i32, i32* @GIT_RMDIR_EMPTY_PARENTS, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i8* @git_buf_cstr(i32* %1)
  %18 = call i32 @git_path_exists(i8* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = call i32 @git_buf_rtruncate_at_char(i32* %1, i8 signext 47)
  %24 = call i8* @git_buf_cstr(i32* %1)
  %25 = call i32 @git_path_exists(i8* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_buf_rtruncate_at_char(i32* %1, i8 signext 47)
  %31 = call i8* @git_buf_cstr(i32* %1)
  %32 = call i32 @git_path_exists(i8* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_buf_rtruncate_at_char(i32* %1, i8 signext 47)
  %38 = call i8* @git_buf_cstr(i32* %1)
  %39 = call i32 @git_path_exists(i8* %38)
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i8*, i8** @empty_tmp_dir, align 8
  %42 = call i32 @git_path_exists(i8* %41)
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = call i32 @git_buf_dispose(i32* %1)
  %47 = load i8*, i8** @empty_tmp_dir, align 8
  %48 = load i32, i32* @GIT_RMDIR_EMPTY_HIERARCHY, align 4
  %49 = call i32 @git_futils_rmdir_r(i8* %47, i8* null, i32 %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i8*, i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @git_buf_rtruncate_at_char(i32*, i8 signext) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
