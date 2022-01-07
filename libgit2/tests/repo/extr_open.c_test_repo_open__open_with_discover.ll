; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__open_with_discover.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__open_with_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_repo_open__open_with_discover.variants = internal global [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"attr/\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"attr/.git\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"attr/.git/\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"attr/sub\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"attr/sub/\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"attr/sub/sub\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"attr/sub/sub/\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"attr/.gitted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__open_with_discover() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8**, align 8
  %3 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @p_rename(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  store i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @test_repo_open__open_with_discover.variants, i64 0, i64 0), i8*** %2, align 8
  br label %6

6:                                                ; preds = %29, %0
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @git_repository_open_ext(i32** %1, i8* %12, i32 0, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_repository_path(i32* %15)
  %17 = call i64 @git__suffixcmp(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_repository_workdir(i32* %21)
  %23 = call i64 @git__suffixcmp(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i8**, i8*** %2, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %2, align 8
  br label %6

32:                                               ; preds = %6
  %33 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__suffixcmp(i32, i8*) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @git_repository_workdir(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
