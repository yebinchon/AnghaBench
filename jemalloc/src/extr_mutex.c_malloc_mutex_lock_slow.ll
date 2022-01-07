; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_mutex.c_malloc_mutex_lock_slow.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_mutex.c_malloc_mutex_lock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32 }

@NSTIME_ZERO_INITIALIZER = common dso_local global i32 0, align 4
@ncpus = common dso_local global i32 0, align 4
@MALLOC_MUTEX_MAX_SPIN = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@config_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malloc_mutex_lock_slow(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @NSTIME_ZERO_INITIALIZER, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @ncpus, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @MALLOC_MUTEX_MAX_SPIN, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %35, %16
  %19 = call i32 (...) @spin_cpu_spinwait()
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* @ATOMIC_RELAXED, align 4
  %23 = call i32 @atomic_load_b(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @malloc_mutex_trylock_final(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %102

34:                                               ; preds = %25, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %18, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @config_stats, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = call i32 @malloc_mutex_lock_final(%struct.TYPE_7__* %44)
  br label %102

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %15
  %48 = call i32 @nstime_update(i32* %4)
  %49 = call i32 @nstime_copy(i32* %7, i32* %4)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* @ATOMIC_RELAXED, align 4
  %53 = call i64 @atomic_fetch_add_u32(i32* %51, i32 1, i32 %52)
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = call i32 @malloc_mutex_trylock_final(%struct.TYPE_7__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* @ATOMIC_RELAXED, align 4
  %62 = call i32 @atomic_fetch_sub_u32(i32* %60, i32 1, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %102

67:                                               ; preds = %47
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @malloc_mutex_lock_final(%struct.TYPE_7__* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* @ATOMIC_RELAXED, align 4
  %73 = call i32 @atomic_fetch_sub_u32(i32* %71, i32 1, i32 %72)
  %74 = call i32 @nstime_update(i32* %7)
  %75 = call i32 @nstime_copy(i32* %9, i32* %7)
  %76 = call i32 @nstime_subtract(i32* %9, i32* %4)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = call i32 @nstime_add(i32* %82, i32* %9)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = call i64 @nstime_compare(i32* %85, i32* %9)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %67
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @nstime_copy(i32* %90, i32* %9)
  br label %92

92:                                               ; preds = %88, %67
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %29, %43, %58, %98, %92
  ret void
}

declare dso_local i32 @spin_cpu_spinwait(...) #1

declare dso_local i32 @atomic_load_b(i32*, i32) #1

declare dso_local i32 @malloc_mutex_trylock_final(%struct.TYPE_7__*) #1

declare dso_local i32 @malloc_mutex_lock_final(%struct.TYPE_7__*) #1

declare dso_local i32 @nstime_update(i32*) #1

declare dso_local i32 @nstime_copy(i32*, i32*) #1

declare dso_local i64 @atomic_fetch_add_u32(i32*, i32, i32) #1

declare dso_local i32 @atomic_fetch_sub_u32(i32*, i32, i32) #1

declare dso_local i32 @nstime_subtract(i32*, i32*) #1

declare dso_local i32 @nstime_add(i32*, i32*) #1

declare dso_local i64 @nstime_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
