; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__custom_headers.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__custom_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8** }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"this is a header about nothing\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"X-Custom: almost OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Accept: defined-by-git\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"X-Custom: this should be ok\00", align 1
@g_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@LIVE_REPO_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__custom_headers() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 0), align 8
  store i8** %1, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  %6 = load i32, i32* @LIVE_REPO_URL, align 4
  %7 = call i32 @git_clone(i32* @g_repo, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %8 = call i32 @cl_git_fail(i32 %7)
  store i8** %2, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  %9 = load i32, i32* @LIVE_REPO_URL, align 4
  %10 = call i32 @git_clone(i32* @g_repo, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %11 = call i32 @cl_git_fail(i32 %10)
  store i8** %3, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  %12 = load i32, i32* @LIVE_REPO_URL, align 4
  %13 = call i32 @git_clone(i32* @g_repo, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %14 = call i32 @cl_git_fail(i32 %13)
  store i8** %4, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  %15 = load i32, i32* @LIVE_REPO_URL, align 4
  %16 = call i32 @git_clone(i32* @g_repo, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %17 = call i32 @cl_git_fail(i32 %16)
  store i8** %5, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_options, i32 0, i32 0, i32 0, i32 1), align 8
  %18 = load i32, i32* @LIVE_REPO_URL, align 4
  %19 = call i32 @git_clone(i32* @g_repo, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* @g_options)
  %20 = call i32 @cl_git_pass(i32 %19)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
