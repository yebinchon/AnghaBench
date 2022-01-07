; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_in_slash_star.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_in_slash_star.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@test_ignore_status__negative_ignores_in_slash_star.test_files = internal global [3 x i8*] [i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [36 x i8] c"empty_standard_repo/bin/look-ma.txt\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/bin/what-about-me.txt\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bin/*\0A!bin/w*\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"bin/look-ma.txt\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"bin/what-about-me.txt\00", align 1
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__negative_ignores_in_slash_star() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @test_ignore_status__negative_ignores_in_slash_star.test_files, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %12 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_status_list_new(i32** %2, i32 %14, %struct.TYPE_10__* %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %46, %0
  %18 = load i64, i64* %5, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @git_status_list_entrycount(i32* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_11__* @git_status_byindex(i32* %23, i64 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_status_list_free(i32* %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @cl_assert(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @cl_assert(i32 %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_test_data(i8*, i8**) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @assert_is_ignored(i8*) #2

declare dso_local i32 @refute_is_ignored(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_status_list_new(i32**, i32, %struct.TYPE_10__*) #2

declare dso_local i64 @git_status_list_entrycount(i32*) #2

declare dso_local %struct.TYPE_11__* @git_status_byindex(i32*, i64) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @git_status_list_free(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
