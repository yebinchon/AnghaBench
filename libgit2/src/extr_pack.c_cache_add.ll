; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_cache_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@GIT_PACK_CACHE_SIZE_LIMIT = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to lock cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__**, %struct.TYPE_16__*, %struct.TYPE_14__*, i32)* @cache_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_add(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GIT_PACK_CACHE_SIZE_LIMIT, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %85

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = call %struct.TYPE_15__* @new_cache_object(%struct.TYPE_14__* %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %84

23:                                               ; preds = %18
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = call i64 @git_mutex_lock(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @GIT_ERROR_OS, align 4
  %30 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = call i32 @git__free(%struct.TYPE_15__* %31)
  store i32 -1, i32* %5, align 4
  br label %85

33:                                               ; preds = %23
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @git_offmap_exists(i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %54, %41
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = call i32 @free_lowest_entry(%struct.TYPE_16__* %55)
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = call i32 @git_offmap_set(i32 %60, i32 %61, %struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %73, align 8
  br label %74

74:                                               ; preds = %57, %33
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = call i32 @git_mutex_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = call i32 @git__free(%struct.TYPE_15__* %81)
  store i32 -1, i32* %5, align 4
  br label %85

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %18
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %80, %28, %17
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_15__* @new_cache_object(%struct.TYPE_14__*) #1

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_15__*) #1

declare dso_local i32 @git_offmap_exists(i32, i32) #1

declare dso_local i32 @free_lowest_entry(%struct.TYPE_16__*) #1

declare dso_local i32 @git_offmap_set(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
