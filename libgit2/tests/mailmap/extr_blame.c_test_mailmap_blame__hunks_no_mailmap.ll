; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_blame.c_test_mailmap_blame__hunks_no_mailmap.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_blame.c_test_mailmap_blame__hunks_no_mailmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@GIT_BLAME_OPTIONS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mailmap\00", align 1
@g_repo = common dso_local global i32 0, align 4
@g_blame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@resolved = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_blame__hunks_no_mailmap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @GIT_BLAME_OPTIONS_INIT, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_blame_file(i32* @g_blame, i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_blame, align 4
  %10 = call i32 @cl_assert(i32 %9)
  store i64 0, i64* %1, align 8
  br label %11

11:                                               ; preds = %55, %0
  %12 = load i64, i64* %1, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resolved, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = load i32, i32* @g_blame, align 4
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, 1
  %20 = call %struct.TYPE_7__* @git_blame_get_hunk_byline(i32 %17, i64 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %2, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resolved, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_s(i32 %37, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resolved, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_s(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %16
  %56 = load i64, i64* %1, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %1, align 8
  br label %11

58:                                               ; preds = %11
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_blame_file(i32*, i32, i8*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @git_blame_get_hunk_byline(i32, i64) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
