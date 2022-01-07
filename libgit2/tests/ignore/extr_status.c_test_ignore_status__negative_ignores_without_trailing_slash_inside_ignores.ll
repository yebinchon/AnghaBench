; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores.test_files = internal global [5 x i8*] [i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [36 x i8] c"empty_standard_repo/parent/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"empty_standard_repo/parent/force.txt\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"empty_standard_repo/parent/child1/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"empty_standard_repo/parent/child2/file.txt\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"parent/*\0A!parent/force.txt\0A!parent/child1\0A!parent/child2/\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"parent/force.txt\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"parent/file.txt\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"parent/child1/file.txt\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"parent/child2/file.txt\00", align 1
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 @make_test_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores.test_files, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 @add_one_to_index(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %16 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_status_list_new(i32** %2, i32 %18, %struct.TYPE_10__* %1)
  %20 = call i32 @cl_git_pass(i32 %19)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %76, %0
  %22 = load i64, i64* %6, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @git_status_list_entrycount(i32* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_11__* @git_status_byindex(i32* %27, i64 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %76

35:                                               ; preds = %26
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %55
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %21

79:                                               ; preds = %21
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @git_status_list_free(i32* %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @cl_assert(i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @cl_assert(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @cl_assert(i32 %86)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_test_data(i8*, i8**) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @add_one_to_index(i8*) #2

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
