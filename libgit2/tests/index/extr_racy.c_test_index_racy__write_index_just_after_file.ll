; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__write_index_just_after_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__write_index_just_after_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.p_timeval = type { i32, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_racy__write_index_just_after_file() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_18__, align 4
  %4 = alloca [2 x %struct.p_timeval], align 16
  %5 = bitcast %struct.TYPE_18__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_index(%struct.TYPE_17__** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %10 = call i32 @git_index_write(%struct.TYPE_17__* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_workdir(i32 %12)
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_18__* %3, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_git_mkfile(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %26 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 1000
  %33 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %34 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 16
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 1
  %42 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 1000
  %49 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 1
  %50 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 16
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %54 = call i32 @p_utimes(i32 %52, %struct.p_timeval* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %57 = call i32 @git_index_add_bypath(%struct.TYPE_17__* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %60 = call i32 @git_index_write(%struct.TYPE_17__* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_git_mkfile(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 2
  %71 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %72 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 1000
  %79 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %80 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 16
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 2
  %87 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 1
  %88 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 1000
  %95 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %96 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 16
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %98 = call i32 @git_index_path(%struct.TYPE_17__* %97)
  %99 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %100 = call i32 @p_utimes(i32 %98, %struct.p_timeval* %99)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %4, i64 0, i64 0
  %105 = call i32 @p_utimes(i32 %103, %struct.p_timeval* %104)
  %106 = call i32 @cl_git_pass(i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %108 = call i32 @git_index_read(%struct.TYPE_17__* %107, i32 1)
  %109 = call i32 @cl_git_pass(i32 %108)
  %110 = load i32, i32* @g_repo, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %112 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %110, %struct.TYPE_17__* %111, i32* null)
  %113 = call i32 @cl_git_pass(i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @git_diff_num_deltas(i32* %114)
  %116 = call i32 @cl_assert_equal_i(i32 1, i32 %115)
  %117 = call i32 @git_buf_dispose(%struct.TYPE_18__* %3)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @git_diff_free(i32* %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %121 = call i32 @git_index_free(%struct.TYPE_17__* %120)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(%struct.TYPE_17__**, i32) #2

declare dso_local i32 @git_index_write(%struct.TYPE_17__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_18__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @p_utimes(i32, %struct.p_timeval*) #2

declare dso_local i32 @git_index_add_bypath(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @git_index_path(%struct.TYPE_17__*) #2

declare dso_local i32 @git_index_read(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_18__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
