; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_basic_stats_merge.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_basic_stats_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@dss_prec_names = common dso_local global i8** null, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_basic_stats_merge(i32* %0, %struct.TYPE_7__* %1, i32* %2, i8** %3, i32* %4, i32* %5, i64* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64* %8, i64** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = call i64 @arena_nthreads_get(%struct.TYPE_7__* %19, i32 0)
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i8**, i8*** @dss_prec_names, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = call i64 @arena_dss_prec_get(%struct.TYPE_7__* %27)
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %13, align 8
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = call i32 @arena_dirty_decay_ms_get(%struct.TYPE_7__* %32)
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = call i32 @arena_muzzy_decay_ms_get(%struct.TYPE_7__* %35)
  %37 = load i32*, i32** %15, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* @ATOMIC_RELAXED, align 4
  %41 = call i64 @atomic_load_zu(i32* %39, i32 %40)
  %42 = load i64*, i64** %16, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = call i64 @eset_npages_get(i32* %46)
  %48 = load i64*, i64** %17, align 8
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i64 @eset_npages_get(i32* %52)
  %54 = load i64*, i64** %18, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  store i64 %56, i64* %54, align 8
  ret void
}

declare dso_local i64 @arena_nthreads_get(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @arena_dss_prec_get(%struct.TYPE_7__*) #1

declare dso_local i32 @arena_dirty_decay_ms_get(%struct.TYPE_7__*) #1

declare dso_local i32 @arena_muzzy_decay_ms_get(%struct.TYPE_7__*) #1

declare dso_local i64 @atomic_load_zu(i32*, i32) #1

declare dso_local i64 @eset_npages_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
