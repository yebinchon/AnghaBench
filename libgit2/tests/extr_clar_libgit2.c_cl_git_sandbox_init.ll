; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_sandbox_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_sandbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cl_sandbox = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c".gitted\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gitattributes\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gitignore\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@_cl_repo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cl_git_sandbox_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @cl_fixture_basename(i8* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @cl_fixture_sandbox(i8* %6)
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** @_cl_sandbox, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @p_chdir(i8* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @F_OK, align 4
  %13 = call i64 @p_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @cl_rename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @F_OK, align 4
  %20 = call i64 @p_access(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @cl_rename(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @F_OK, align 4
  %27 = call i64 @p_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @cl_rename(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i32 @p_chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @git_repository_open(i32** @_cl_repo, i8* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** @_cl_repo, align 8
  %39 = call i32 @git_repository_reinit_filesystem(i32* %38, i32 0)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** @_cl_repo, align 8
  ret i32* %41
}

declare dso_local i8* @cl_fixture_basename(i8*) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_chdir(i8*) #1

declare dso_local i64 @p_access(i8*, i32) #1

declare dso_local i32 @cl_rename(i8*, i8*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_reinit_filesystem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
