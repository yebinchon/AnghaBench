; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_nonfull_slab_get.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_nonfull_slab_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@bin_infos = common dso_local global i32* null, align 8
@config_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_6__*, i64, i32)* @arena_bin_nonfull_slab_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arena_bin_nonfull_slab_get(i32* %0, i32* %1, %struct.TYPE_6__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = call i32* @arena_bin_slabs_nonfull_tryget(%struct.TYPE_6__* %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** %12, align 8
  store i32* %19, i32** %6, align 8
  br label %64

20:                                               ; preds = %5
  %21 = load i32*, i32** @bin_infos, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @malloc_mutex_unlock(i32* %24, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i32* @arena_slab_alloc(i32* %28, i32* %29, i64 %30, i32 %31, i32* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @malloc_mutex_lock(i32* %34, i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %20
  %41 = load i64, i64* @config_stats, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %40
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %6, align 8
  br label %64

56:                                               ; preds = %20
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = call i32* @arena_bin_slabs_nonfull_tryget(%struct.TYPE_6__* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32*, i32** %12, align 8
  store i32* %62, i32** %6, align 8
  br label %64

63:                                               ; preds = %56
  store i32* null, i32** %6, align 8
  br label %64

64:                                               ; preds = %63, %61, %54, %18
  %65 = load i32*, i32** %6, align 8
  ret i32* %65
}

declare dso_local i32* @arena_bin_slabs_nonfull_tryget(%struct.TYPE_6__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32* @arena_slab_alloc(i32*, i32*, i64, i32, i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
