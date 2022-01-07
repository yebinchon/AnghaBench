; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__iterate_all() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %1, align 8
  %15 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %3, align 8
  %16 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 3, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %20 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %25, i32* null, %struct.TYPE_7__* %2)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @git_diff_num_deltas(i32* %28)
  store i64 %29, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %96, %0
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @git_patch_from_diff(i32** %7, i32* %35, i64 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @git_patch_num_hunks(i32* %45)
  store i64 %46, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %90, %34
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @git_patch_get_hunk(i32** %10, i64* %12, i32* %52, i64 %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = ptrtoint i32* %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i64 0, i64* %11, align 8
  br label %62

62:                                               ; preds = %86, %51
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @git_patch_get_line_in_hunk(%struct.TYPE_8__** %13, i32* %67, i64 %68, i64 %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %74, %66
  %80 = phi i1 [ false, %66 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %62

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %47

93:                                               ; preds = %47
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @git_patch_free(i32* %94)
  br label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %5, align 8
  br label %30

99:                                               ; preds = %30
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cl_assert_equal_i(i32 13, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cl_assert_equal_i(i32 8, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cl_assert_equal_i(i32 14, i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @git_diff_free(i32* %109)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_get_hunk(i32**, i64*, i32*, i64) #1

declare dso_local i32 @git_patch_get_line_in_hunk(%struct.TYPE_8__**, i32*, i64, i64) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
