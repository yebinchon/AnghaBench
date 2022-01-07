; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_check_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_check_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i8** }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i32*, %struct.TYPE_13__*)* @merge_check_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_check_workdir(i64* %0, i32* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  %13 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @GIT_UNUSED(i32* %14)
  %16 = load i64*, i64** %6, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @GIT_DIFF_DISABLE_PATHSPEC_MATCH, align 4
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8**
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i8** %39, i8*** %41, align 8
  %42 = load i32, i32* @GIT_SUBMODULE_IGNORE_ALL, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @git_diff_index_to_workdir(%struct.TYPE_15__** %10, i32* %44, i32* null, %struct.TYPE_14__* %11)
  store i32 %45, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %54

48:                                               ; preds = %22
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %6, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %47
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = call i32 @git_diff_free(%struct.TYPE_15__* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(%struct.TYPE_15__**, i32*, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_diff_free(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
