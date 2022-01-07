; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__larger_hunks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__larger_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"d70d245ed97ed2aa596dd1af6536e4bfdb047b69\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"7a9e0b02e63179929fed24f0a3e0f19168114d10\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__larger_hunks() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %17 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  %18 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* @g_repo, align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i32* @resolve_commit_oid_to_tree(i32 %19, i8* %20)
  store i32* %21, i32** %3, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @cl_assert(i32* %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32* @resolve_commit_oid_to_tree(i32 %27, i8* %28)
  store i32* %29, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @cl_assert(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %121, %0
  %38 = load i64, i64* %6, align 8
  %39 = icmp ule i64 %38, 2
  br i1 %39, label %40, label %124

40:                                               ; preds = %37
  store i32* null, i32** %13, align 8
  %41 = load i64, i64* %6, align 8
  switch i64 %41, label %56 [
    i64 0, label %42
    i64 1, label %46
    i64 2, label %51
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_diff_index_to_workdir(i32** %13, i32 %43, i32* null, %struct.TYPE_5__* %5)
  %45 = call i32 @cl_git_pass(i32 %44)
  br label %56

46:                                               ; preds = %40
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_diff_tree_to_workdir(i32** %13, i32 %47, i32* %48, %struct.TYPE_5__* %5)
  %50 = call i32 @cl_git_pass(i32 %49)
  br label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @g_repo, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @git_diff_tree_to_workdir(i32** %13, i32 %52, i32* %53, %struct.TYPE_5__* %5)
  %55 = call i32 @cl_git_pass(i32 %54)
  br label %56

56:                                               ; preds = %40, %51, %46, %42
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @git_diff_num_deltas(i32* %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @cl_assert_equal_i(i32 2, i32 %60)
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %115, %56
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  %67 = load i32*, i32** %13, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @git_patch_from_diff(i32** %14, i32* %67, i64 %68)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @cl_assert(i32* %71)
  %73 = load i32*, i32** %14, align 8
  %74 = call i64 @git_patch_num_hunks(i32* %73)
  store i64 %74, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %105, %66
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @git_patch_get_hunk(i32** %15, i64* %12, i32* %80, i64 %81)
  %83 = call i32 @cl_git_pass(i32 %82)
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %96, %79
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32*, i32** %14, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @git_patch_get_line_in_hunk(i32** %16, i32* %89, i64 %90, i64 %91)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @cl_assert(i32* %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %11, align 8
  br label %84

99:                                               ; preds = %84
  %100 = load i32*, i32** %14, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @git_patch_get_line_in_hunk(i32** %16, i32* %100, i64 %101, i64 %102)
  %104 = call i32 @cl_git_fail(i32 %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %75

108:                                              ; preds = %75
  %109 = load i32*, i32** %14, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @git_patch_get_hunk(i32** %15, i64* %12, i32* %109, i64 %110)
  %112 = call i32 @cl_git_fail(i32 %111)
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @git_patch_free(i32* %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %62

118:                                              ; preds = %62
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @git_diff_free(i32* %119)
  br label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %37

124:                                              ; preds = %37
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @git_tree_free(i32* %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @git_tree_free(i32* %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_assert(i32*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_5__*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #2

declare dso_local i64 @git_patch_num_hunks(i32*) #2

declare dso_local i32 @git_patch_get_hunk(i32**, i64*, i32*, i64) #2

declare dso_local i32 @git_patch_get_line_in_hunk(i32**, i32*, i64, i64) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
