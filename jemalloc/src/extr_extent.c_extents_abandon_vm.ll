; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_abandon_vm.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_abandon_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@config_stats = common dso_local global i64 0, align 8
@extent_state_dirty = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32**, i32*, i32*, i32)* @extents_abandon_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extents_abandon_vm(i32* %0, %struct.TYPE_8__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %11, align 8
  %15 = call i64 @extent_size_get(i32* %14)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @config_stats, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @arena_stats_accum_zu(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %6
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @eset_state_get(i32* %25)
  %27 = load i64, i64* @extent_state_dirty, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = load i32**, i32*** %9, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @extent_purge_lazy_impl(i32* %30, %struct.TYPE_8__* %31, i32** %32, i32* %33, i32 0, i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @extent_size_get(i32* %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @extent_purge_forced_impl(i32* %39, %struct.TYPE_8__* %40, i32** %41, i32* %42, i32 0, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %29
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @extent_dalloc(i32* %49, %struct.TYPE_8__* %50, i32* %51)
  ret void
}

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @arena_stats_accum_zu(i32*, i64) #1

declare dso_local i64 @eset_state_get(i32*) #1

declare dso_local i64 @extent_purge_lazy_impl(i32*, %struct.TYPE_8__*, i32**, i32*, i32, i64, i32) #1

declare dso_local i32 @extent_purge_forced_impl(i32*, %struct.TYPE_8__*, i32**, i32*, i32, i64, i32) #1

declare dso_local i32 @extent_dalloc(i32*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
