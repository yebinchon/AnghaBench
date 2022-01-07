; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_files_and_hunks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_files_and_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__iterate_files_and_hunks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %1, align 8
  %13 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %17 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %22, i32* null, %struct.TYPE_4__* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @git_diff_num_deltas(i32* %25)
  store i64 %26, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %61, %0
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @git_patch_from_diff(i32** %8, i32* %32, i64 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @cl_assert(i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @git_patch_num_hunks(i32* %40)
  store i64 %41, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %55, %31
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @git_patch_get_hunk(i32** %11, i32* null, i32* %47, i64 %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @cl_assert(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @git_patch_free(i32* %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %27

64:                                               ; preds = %27
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @cl_assert_equal_i(i32 13, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @cl_assert_equal_i(i32 8, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @git_diff_free(i32* %69)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i64 @git_patch_num_hunks(i32*) #1

declare dso_local i32 @git_patch_get_hunk(i32**, i32*, i32*, i64) #1

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
