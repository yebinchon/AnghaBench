; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__max_size_threshold.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__max_size_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_NOT_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__max_size_threshold() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_13__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  %14 = bitcast %struct.TYPE_13__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i32 3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %18 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %23, i32* null, %struct.TYPE_13__* %2)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @git_diff_num_deltas(i32* %26)
  store i64 %27, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %71, %0
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @git_patch_from_diff(%struct.TYPE_12__** %9, i32* %33, i64 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = call i32 @cl_assert(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = call %struct.TYPE_12__* @git_patch_get_delta(%struct.TYPE_12__* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = call i32 @cl_assert(%struct.TYPE_12__* %41)
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = call i64 @git_patch_num_hunks(%struct.TYPE_12__* %45)
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %54 = load i32, i32* @GIT_DIFF_FLAG_NOT_BINARY, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = call i32 @git_patch_free(%struct.TYPE_12__* %69)
  br label %71

71:                                               ; preds = %32
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @cl_assert_equal_i(i32 13, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @cl_assert_equal_i(i32 0, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @cl_assert_equal_i(i32 8, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @git_diff_free(i32* %81)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i32 3, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %86 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 3
  store i32 50, i32* %91, align 4
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %92, i32* null, %struct.TYPE_13__* %2)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i64 @git_diff_num_deltas(i32* %95)
  store i64 %96, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %136, %74
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %97
  %102 = load i32*, i32** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @git_patch_from_diff(%struct.TYPE_12__** %11, i32* %102, i64 %103)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %107 = call %struct.TYPE_12__* @git_patch_get_delta(%struct.TYPE_12__* %106)
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %12, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = call i64 @git_patch_num_hunks(%struct.TYPE_12__* %110)
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %119 = load i32, i32* @GIT_DIFF_FLAG_NOT_BINARY, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GIT_DIFF_FLAG_BINARY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = call i32 @git_patch_free(%struct.TYPE_12__* %134)
  br label %136

136:                                              ; preds = %101
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %97

139:                                              ; preds = %97
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @cl_assert_equal_i(i32 13, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @cl_assert_equal_i(i32 3, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @cl_assert_equal_i(i32 5, i32 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @git_diff_free(i32* %146)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_patch_from_diff(%struct.TYPE_12__**, i32*, i64) #1

declare dso_local i32 @cl_assert(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @git_patch_get_delta(%struct.TYPE_12__*) #1

declare dso_local i64 @git_patch_num_hunks(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_patch_free(%struct.TYPE_12__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
