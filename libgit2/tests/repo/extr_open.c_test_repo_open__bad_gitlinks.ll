; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__bad_gitlinks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__bad_gitlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_repo_open__bad_gitlinks.bad_links = internal global [8 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"garbage\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gitdir\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gitdir:\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gitdir: foobar\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"gitdir: ../invalid\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gitdir: ../invalid2\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"gitdir: ../attr/.git with extra stuff\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"invalid2/.git\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"invalid2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__bad_gitlinks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8**, align 8
  %3 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 511)
  %7 = call i32 @cl_git_pass(i32 %6)
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @test_repo_open__bad_gitlinks.bad_links, i64 0, i64 0), i8*** %2, align 8
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @make_gitlink_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %14)
  %16 = call i32 @git_repository_open_ext(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0, i32* null)
  %17 = call i32 @cl_git_fail(i32 %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i8**, i8*** %2, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %2, align 8
  br label %8

21:                                               ; preds = %8
  %22 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %23 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 %22)
  %24 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %25 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %24)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

declare dso_local i32 @make_gitlink_dir(i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
