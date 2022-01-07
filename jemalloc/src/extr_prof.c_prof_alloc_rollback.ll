; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_alloc_rollback.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_alloc_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@config_prof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_alloc_rollback(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @config_prof, align 4
  %9 = call i32 @cassert(i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @tsd_reentrancy_level_get(i32* %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = ptrtoint %struct.TYPE_7__* %14 to i64
  %16 = icmp eq i64 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @prof_tdata_get(i32* %23, i32 1)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @prof_sample_threshold_update(i32* %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = ptrtoint %struct.TYPE_7__* %32 to i64
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @tsd_tsdn(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @malloc_mutex_lock(i32 %37, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @tsd_tsdn(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i64 @prof_tctx_should_destroy(i32 %47, %struct.TYPE_7__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = call i32 @prof_tctx_destroy(i32* %52, %struct.TYPE_7__* %53)
  br label %64

55:                                               ; preds = %35
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @tsd_tsdn(i32* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @malloc_mutex_unlock(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %51
  br label %65

65:                                               ; preds = %13, %64, %31
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @prof_sample_threshold_update(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @prof_tctx_should_destroy(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @prof_tctx_destroy(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
