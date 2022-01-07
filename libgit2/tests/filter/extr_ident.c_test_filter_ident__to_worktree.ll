; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_ident.c_test_filter_ident__to_worktree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_ident.c_test_filter_ident__to_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4
@GIT_FILTER_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Hello\0A$Id$\0AFun stuff\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Hello\0A$Id: b69e2387aafcaf73c4de5b9ab59abe27fdadee30 $\0AFun stuff\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Hello\0A$Id: Junky$\0AFun stuff\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Hello\0A$Id: 45cd107a7102911cb2a7df08404674327fa050b9 $\0AFun stuff\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"$Id$\0AAt the start\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"$Id: b13415c767abc196fb95bd17070e8c1113e32160 $\0AAt the start\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"At the end\0A$Id$\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"At the end\0A$Id: 1344925c6bc65b34c5a7b50f86bf688e48e9a272 $\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"$Id: b3f5ebfb5843bc43ceecff6d4f26bb37c615beb1 $\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"$Id: Some sort of junk goes here$\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"$Id: ab2dd3853c7c9a4bff55aca2bea077a73c32ac06 $\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"$Id: \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"$Id\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"$I\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Id$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_ident__to_worktree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %5 = call i32 @git_filter_list_new(i32** %1, i32 %3, i32 %4, i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @GIT_FILTER_IDENT, align 4
  %8 = call i32* @git_filter_lookup(i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_filter_list_push(i32* %13, i32* %14, i32* null)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @add_blob_and_filter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_filter_list_free(i32* %37)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_filter_list_new(i32**, i32, i32, i32) #1

declare dso_local i32* @git_filter_lookup(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_filter_list_push(i32*, i32*, i32*) #1

declare dso_local i32 @add_blob_and_filter(i8*, i32*, i8*) #1

declare dso_local i32 @git_filter_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
