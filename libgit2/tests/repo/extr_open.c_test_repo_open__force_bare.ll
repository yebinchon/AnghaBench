; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__force_bare.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__force_bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gitdir: ../empty_standard_repo/.git\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"empty_standard_repo/.git\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"alternate/.git\00", align 1
@GIT_REPOSITORY_OPEN_BARE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"empty_standard_repo/subdir\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"empty_standard_repo/subdir/something.txt\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"something\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"alternate/subdir\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"alternate/subdir/sub2\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"alternate/subdir/sub2/something.txt\00", align 1
@GIT_REPOSITORY_OPEN_CROSS_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__force_bare() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = call i32 @make_gitlink_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_repository_is_bare(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_repository_is_bare(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_repository_free(i32* %19)
  %21 = call i32 @git_repository_open_bare(i32** %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_repository_is_bare(i32* %23)
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_repository_free(i32* %26)
  %28 = call i32 @git_repository_open_bare(i32** %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @cl_git_fail(i32 %28)
  %30 = load i32, i32* @GIT_REPOSITORY_OPEN_BARE, align 4
  %31 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_repository_is_bare(i32* %33)
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_repository_free(i32* %36)
  %38 = call i32 @p_mkdir(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 511)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %41 = call i32 @git_repository_open_bare(i32** %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %42 = call i32 @cl_git_fail(i32 %41)
  %43 = load i32, i32* @GIT_REPOSITORY_OPEN_BARE, align 4
  %44 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32* null)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @git_repository_is_bare(i32* %46)
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_repository_free(i32* %49)
  %51 = call i32 @p_mkdir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 511)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = call i32 @p_mkdir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i32 @git_repository_open_bare(i32** %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %57 = call i32 @cl_git_fail(i32 %56)
  %58 = load i32, i32* @GIT_REPOSITORY_OPEN_BARE, align 4
  %59 = load i32, i32* @GIT_REPOSITORY_OPEN_CROSS_FS, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @git_repository_open_ext(i32** %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %60, i32* null)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @git_repository_is_bare(i32* %63)
  %65 = call i32 @cl_assert(i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @git_repository_free(i32* %66)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @make_gitlink_dir(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_repository_open_bare(i32**, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
