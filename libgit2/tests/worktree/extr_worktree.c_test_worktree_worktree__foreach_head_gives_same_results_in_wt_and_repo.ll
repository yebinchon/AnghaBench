; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__foreach_head_gives_same_results_in_wt_and_repo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__foreach_head_gives_same_results_in_wt_and_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__**, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@fixture = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@read_head_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__foreach_head_gives_same_results_in_wt_and_repo() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca [2 x %struct.TYPE_11__*], align 16
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %6 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %7 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 1), align 4
  %9 = load i32, i32* @GIT_HEAD_FILE, align 4
  %10 = call i32 @git_reference_lookup(%struct.TYPE_11__** %7, i32 %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 4
  %14 = load i32, i32* @GIT_HEAD_FILE, align 4
  %15 = call i32 @git_reference_lookup(%struct.TYPE_11__** %12, i32 %13, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 1), align 4
  %18 = load i32, i32* @read_head_ref, align 4
  %19 = call i32 @git_repository_foreach_head(i32 %17, i32 %18, i32 0, %struct.TYPE_10__* %1)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fixture, i32 0, i32 0), align 4
  %22 = load i32, i32* @read_head_ref, align 4
  %23 = call i32 @git_repository_foreach_head(i32 %21, i32 %22, i32 0, %struct.TYPE_10__* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 0
  %28 = call i64 @ARRAY_SIZE(%struct.TYPE_11__** %27)
  %29 = call i32 @cl_assert_equal_i(i32 %26, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 0
  %33 = call i64 @ARRAY_SIZE(%struct.TYPE_11__** %32)
  %34 = call i32 @cl_assert_equal_i(i32 %31, i64 %33)
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %96, %0
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 0
  %38 = call i64 @ARRAY_SIZE(%struct.TYPE_11__** %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %47, i64 %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_s(i32 %45, i32 %52)
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cl_assert_equal_s(i32 %58, i32 %65)
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %73, i64 %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cl_assert_equal_s(i32 %71, i32 %78)
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds [2 x %struct.TYPE_11__*], [2 x %struct.TYPE_11__*]* %3, i64 0, i64 %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = call i32 @git_reference_free(%struct.TYPE_11__* %82)
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i32 @git_reference_free(%struct.TYPE_11__* %88)
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 %92
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @git_reference_free(%struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %40
  %97 = load i64, i64* %4, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %4, align 8
  br label %35

99:                                               ; preds = %35
  %100 = call i32 @git_vector_free(%struct.TYPE_10__* %1)
  %101 = call i32 @git_vector_free(%struct.TYPE_10__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(%struct.TYPE_11__**, i32, i32) #2

declare dso_local i32 @git_repository_foreach_head(i32, i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_11__**) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_reference_free(%struct.TYPE_11__*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
