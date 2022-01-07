; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_lower_slab.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_lower_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

@config_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_7__*)* @arena_bin_lower_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_bin_lower_slab(i32* %0, i32* %1, i32* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i64 @extent_nfree_get(i32* %9)
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @extent_snad_comp(i32* %21, i32* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @extent_nfree_get(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @arena_bin_slabs_nonfull_insert(%struct.TYPE_7__* %32, i32* %35)
  br label %44

37:                                               ; preds = %25
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @arena_bin_slabs_full_insert(i32* %38, %struct.TYPE_7__* %39, i32* %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load i64, i64* @config_stats, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %44
  br label %61

57:                                               ; preds = %18, %4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @arena_bin_slabs_nonfull_insert(%struct.TYPE_7__* %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %56
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i64 @extent_snad_comp(i32*, i32*) #1

declare dso_local i32 @arena_bin_slabs_nonfull_insert(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @arena_bin_slabs_full_insert(i32*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
