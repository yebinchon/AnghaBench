; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__named.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"remote\\.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"valid-name\00", align 1
@TEST_URL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"remote.valid-name.fetch\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"+refs/heads/*:refs/remotes/valid-name/*\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"remote.valid-name.url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_create__named() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @_repo, align 4
  %6 = call i64 @count_config_entries_match(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @_repo, align 4
  %8 = load i8*, i8** @TEST_URL, align 8
  %9 = call i32 @git_remote_create(i32** %1, i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i8* @git_remote_name(i32* %11)
  %13 = call i32 @cl_assert_equal_s(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i8* @git_remote_url(i32* %14)
  %16 = load i8*, i8** @TEST_URL, align 8
  %17 = call i32 @cl_assert_equal_s(i8* %15, i8* %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_remote_owner(i32* %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i32 @cl_assert_equal_p(i32 %19, i32 %20)
  %22 = load i32, i32* @_repo, align 4
  %23 = call i32 @git_repository_config_snapshot(i32** %2, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_config_get_string(i8** %3, i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @cl_assert_equal_s(i8* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_config_get_string(i8** %3, i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** @TEST_URL, align 8
  %35 = call i32 @cl_assert_equal_s(i8* %33, i8* %34)
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 2
  %38 = load i32, i32* @_repo, align 4
  %39 = call i64 @count_config_entries_match(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @cl_assert_equal_i(i64 %37, i64 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_config_free(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_remote_free(i32* %43)
  ret void
}

declare dso_local i64 @count_config_entries_match(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_create(i32**, i32, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i8* @git_remote_name(i32*) #1

declare dso_local i8* @git_remote_url(i32*) #1

declare dso_local i32 @cl_assert_equal_p(i32, i32) #1

declare dso_local i32 @git_remote_owner(i32*) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #1

declare dso_local i32 @git_config_get_string(i8**, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
