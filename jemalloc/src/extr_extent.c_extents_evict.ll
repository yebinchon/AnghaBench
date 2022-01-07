; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_evict.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @extents_evict(i32* %0, i32* %1, i32** %2, %struct.TYPE_6__* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @tsdn_rtree_ctx(i32* %15, i32* %11)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @malloc_mutex_lock(i32* %17, i32* %19)
  br label %21

21:                                               ; preds = %5, %57
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = call i32* @extent_list_first(i32* %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %73

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* @ATOMIC_RELAXED, align 4
  %32 = call i64 @atomic_load_zu(i32* %30, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32* null, i32** %13, align 8
  br label %73

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @eset_remove_locked(i32* %38, %struct.TYPE_6__* %39, i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %58

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @extent_try_delayed_coalesce(i32* %48, i32* %49, i32** %50, i32* %51, %struct.TYPE_6__* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %58

57:                                               ; preds = %47
  br label %21

58:                                               ; preds = %56, %46
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = call i32 @eset_state_get(%struct.TYPE_6__* %59)
  switch i32 %60, label %70 [
    i32 131, label %61
    i32 130, label %63
    i32 129, label %63
    i32 128, label %66
  ]

61:                                               ; preds = %58
  %62 = call i32 (...) @not_reached()
  br label %63

63:                                               ; preds = %58, %58, %61
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @extent_state_set(i32* %64, i32 131)
  br label %72

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @extent_deregister(i32* %67, i32* %68)
  br label %72

70:                                               ; preds = %58
  %71 = call i32 (...) @not_reached()
  br label %72

72:                                               ; preds = %70, %66, %63
  br label %73

73:                                               ; preds = %72, %36, %27
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @malloc_mutex_unlock(i32* %74, i32* %76)
  %78 = load i32*, i32** %13, align 8
  ret i32* %78
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32* @extent_list_first(i32*) #1

declare dso_local i64 @atomic_load_zu(i32*, i32) #1

declare dso_local i32 @eset_remove_locked(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @extent_try_delayed_coalesce(i32*, i32*, i32**, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @eset_state_get(%struct.TYPE_6__*) #1

declare dso_local i32 @not_reached(...) #1

declare dso_local i32 @extent_state_set(i32*, i32) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
