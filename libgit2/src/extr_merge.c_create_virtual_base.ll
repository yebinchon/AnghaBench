; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_create_virtual_base.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_create_virtual_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32 }

@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GIT_MERGE_FAIL_ON_CONFLICT = common dso_local global i32 0, align 4
@GIT_MERGE__VIRTUAL_BASE = common dso_local global i32 0, align 4
@GIT_ANNOTATED_COMMIT_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__**, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i64)* @create_virtual_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_virtual_base(%struct.TYPE_17__** %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, %struct.TYPE_16__* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  store i32* null, i32** %15, align 8
  %17 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_16__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %22 = call i32 @memcpy(%struct.TYPE_16__* %16, %struct.TYPE_16__* %21, i32 4)
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* @GIT_MERGE_FAIL_ON_CONFLICT, align 4
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @GIT_MERGE__VIRTUAL_BASE, align 4
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  %38 = call i64 @merge_annotated_commits(i32** %15, i32* null, i32* %33, %struct.TYPE_17__* %34, %struct.TYPE_17__* %35, i64 %37, %struct.TYPE_16__* %16)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %61

41:                                               ; preds = %23
  %42 = call %struct.TYPE_17__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %14, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__* %43)
  %45 = load i32, i32* @GIT_ANNOTATED_COMMIT_VIRTUAL, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = call i32 @insert_head_ids(i32* %52, %struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = call i32 @insert_head_ids(i32* %56, %struct.TYPE_17__* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %60, align 8
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %41, %40
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @merge_annotated_commits(i32**, i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i64, %struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_17__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_17__*) #2

declare dso_local i32 @insert_head_ids(i32*, %struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
