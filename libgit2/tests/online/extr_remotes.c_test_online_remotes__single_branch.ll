; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_remotes.c_test_online_remotes__single_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_remotes.c_test_online_remotes__single_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@remote_single_branch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"first-merge\00", align 1
@URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"./single-branch\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@REFSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_remotes__single_branch() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @remote_single_branch, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @URL, align 4
  %12 = call i32 @git_clone(i32** %2, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_reference_list(%struct.TYPE_8__* %4, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %34, %0
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git__prefixcmp(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @cl_assert_equal_i(i32 1, i64 %38)
  %40 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_remote_lookup(i32** %3, i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_8__* %4, i32* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @cl_assert_equal_i(i32 1, i64 %48)
  %50 = load i32, i32* @REFSPEC, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_s(i32 %50, i32 %54)
  %56 = call i32 @git_strarray_free(%struct.TYPE_8__* %4)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_remote_free(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_repository_free(i32* %59)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_clone(i32**, i32, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @git_reference_list(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @git__prefixcmp(i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_8__*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_remote_get_fetch_refspecs(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
