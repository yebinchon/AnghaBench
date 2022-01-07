; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_randomly_while_saving_state.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_randomly_while_saving_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PATCH_CACHE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__iterate_randomly_while_saving_state() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %1, align 8
  %13 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %3, align 8
  %14 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @PATCH_CACHE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = mul nuw i64 8, %16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32** %18, i32 0, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 3, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %25 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %30, i32* null, %struct.TYPE_6__* %2)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @git_diff_num_deltas(i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = call i32 @srand(i32 121212)
  %36 = call i32 (...) @rand()
  %37 = load i32, i32* @PATCH_CACHE, align 4
  %38 = srem i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %74, %0
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i32*, i32** %18, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32*, i32** %18, i64 %48
  store i32* null, i32** %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32*, i32** %18, i64 %50
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @git_patch_from_diff(i32** %51, i32* %52, i64 %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32*, i32** %18, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @iterate_over_patch(i32* %65, %struct.TYPE_7__* %4)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @git_patch_free(i32* %67)
  br label %69

69:                                               ; preds = %64, %44
  %70 = call i32 (...) @rand()
  %71 = load i32, i32* @PATCH_CACHE, align 4
  %72 = srem i32 %70, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %40

77:                                               ; preds = %40
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @git_diff_free(i32* %78)
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %97, %77
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @PATCH_CACHE, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i32*, i32** %18, i64 %86
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @iterate_over_patch(i32* %92, %struct.TYPE_7__* %4)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @git_patch_free(i32* %94)
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %80

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cl_assert_equal_i(i32 13, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cl_assert_equal_i(i32 8, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cl_assert_equal_i(i32 14, i32 %108)
  %110 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @iterate_over_patch(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @git_patch_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
