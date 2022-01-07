; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_rtree.c_rtree_leaf_init.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_rtree.c_rtree_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@rtree_levels = common dso_local global %struct.TYPE_6__* null, align 8
@RTREE_HEIGHT = common dso_local global i32 0, align 4
@ATOMIC_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32*)* @rtree_leaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtree_leaf_init(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @malloc_mutex_lock(i32* %9, i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @ATOMIC_RELAXED, align 4
  %15 = call i32* @atomic_load_p(i32* %13, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = call i32 @ZU(i32 1)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rtree_levels, align 8
  %23 = load i32, i32* @RTREE_HEIGHT, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %21, %28
  %30 = call i32* @rtree_leaf_alloc(i32* %19, %struct.TYPE_5__* %20, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @malloc_mutex_unlock(i32* %34, i32* %36)
  store i32* null, i32** %4, align 8
  br label %49

38:                                               ; preds = %18
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ATOMIC_RELEASE, align 4
  %42 = call i32 @atomic_store_p(i32* %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %3
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @malloc_mutex_unlock(i32* %44, i32* %46)
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %43, %33
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32* @atomic_load_p(i32*, i32) #1

declare dso_local i32* @rtree_leaf_alloc(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @atomic_store_p(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
