; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_close_lru.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_close_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@mem_ctl = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to close memory window; couldn't find LRU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @git_mwindow_close_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_mwindow_close_lru(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* @mem_ctl, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store %struct.TYPE_16__** %12, %struct.TYPE_16__*** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call i32 @git_mwindow_scan_lru(%struct.TYPE_14__* %18, %struct.TYPE_16__** %6, %struct.TYPE_16__** %7)
  br label %20

20:                                               ; preds = %17, %1
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %9, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.TYPE_14__* @git_vector_get(%struct.TYPE_17__* %31, i64 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %10, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = call i32 @git_mwindow_scan_lru(%struct.TYPE_14__* %34, %struct.TYPE_16__** %6, %struct.TYPE_16__** %7)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = icmp ne %struct.TYPE_16__* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store %struct.TYPE_16__** %41, %struct.TYPE_16__*** %8, align 8
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @GIT_ERROR_OS, align 4
  %51 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %86

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = call i32 @git_futils_mmap_free(%struct.TYPE_13__* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = icmp ne %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %73, align 8
  br label %79

74:                                               ; preds = %52
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %78, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = call i32 @git__free(%struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %49
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @git_mwindow_scan_lru(%struct.TYPE_14__*, %struct.TYPE_16__**, %struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_14__* @git_vector_get(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_futils_mmap_free(%struct.TYPE_13__*) #1

declare dso_local i32 @git__free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
