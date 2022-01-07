; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_flush_cache.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@SC_NBINS = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@nhbins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*)* @tcache_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcache_flush_cache(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SC_NBINS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_15__* @tcache_small_bin_get(%struct.TYPE_14__* %20, i32 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tcache_bin_flush_small(i32* %23, %struct.TYPE_14__* %24, %struct.TYPE_15__* %25, i32 %26, i32 0)
  %28 = load i64, i64* @config_stats, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %30, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* @SC_NBINS, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %68, %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @nhbins, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.TYPE_15__* @tcache_large_bin_get(%struct.TYPE_14__* %49, i32 %50)
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %8, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @tcache_bin_flush_large(i32* %52, %struct.TYPE_14__* %53, %struct.TYPE_15__* %54, i32 %55, i32 0)
  %57 = load i64, i64* @config_stats, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %67

67:                                               ; preds = %59, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %44

71:                                               ; preds = %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_15__* @tcache_small_bin_get(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tcache_bin_flush_small(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @tcache_large_bin_get(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tcache_bin_flush_large(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
