; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_hack_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_hack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.stat = type { i64, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_10__ = type { i64, i8* }
%struct.p_timeval = type { i64, i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@repo_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TEST_REPO_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @hack_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hack_index(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca [2 x %struct.p_timeval], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  %10 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = call i8* @time(i32* null)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr i8, i8* %12, i64 -5
  %14 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %7, i64 0, i64 0
  %17 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %16, i32 0, i32 0
  store i64 0, i64* %17, align 16
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr i8, i8* %18, i64 -5
  %20 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %7, i64 0, i64 1
  %21 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %7, i64 0, i64 1
  %23 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %22, i32 0, i32 0
  store i64 0, i64* %23, align 16
  store i64 0, i64* %9, align 8
  %24 = load i8**, i8*** %2, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %89, %1
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  %32 = call i32 @git_buf_clear(%struct.TYPE_13__* %5)
  %33 = load i32, i32* @repo_index, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @git_index_get_bypath(i32 %33, i8* %34, i32 0)
  %36 = inttoptr i64 %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %6, align 8
  %37 = call i32 @cl_assert(%struct.TYPE_12__* %36)
  %38 = load i32, i32* @TEST_REPO_PATH, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @git_buf_printf(%struct.TYPE_13__* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %7, i64 0, i64 0
  %45 = call i32 @p_utimes(i32 %43, %struct.p_timeval* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @p_stat(i32 %48, %struct.stat* %4)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %31
  %90 = load i8**, i8*** %2, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %3, align 8
  br label %28

95:                                               ; preds = %28
  %96 = call i32 @git_buf_dispose(%struct.TYPE_13__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @time(i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert(%struct.TYPE_12__*) #2

declare dso_local i64 @git_index_get_bypath(i32, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_13__*, i8*, i32, i8*) #2

declare dso_local i32 @p_utimes(i32, %struct.p_timeval*) #2

declare dso_local i32 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
