; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_addr_randomize.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_addr_randomize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@PAGE = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*, i64)* @extent_addr_randomize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_addr_randomize(i32* %0, i32* %1, %struct.TYPE_5__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = call i64 @extent_base_get(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = call i64 @extent_addr_get(%struct.TYPE_5__* %16)
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @PAGE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %4
  %25 = load i32, i32* @LG_PAGE, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @CACHELINE_CEILING(i64 %26)
  %28 = call i32 @lg_floor(i32 %27)
  %29 = sub i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @tsdn_null(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @tsdn_tsd(i32* %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @tsd_prng_statep_get(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @prng_lg_range_u64(i32* %37, i32 %38)
  store i64 %39, i64* %10, align 8
  br label %45

40:                                               ; preds = %24
  %41 = ptrtoint i64* %10 to i64
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @prng_lg_range_u64(i32* %12, i32 %43)
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @LG_PAGE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = shl i64 %46, %50
  store i64 %51, i64* %13, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %55, %56
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i8* @ALIGNMENT_ADDR2BASE(i8* %63, i64 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %45, %4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_base_get(%struct.TYPE_5__*) #1

declare dso_local i64 @extent_addr_get(%struct.TYPE_5__*) #1

declare dso_local i32 @lg_floor(i32) #1

declare dso_local i32 @CACHELINE_CEILING(i64) #1

declare dso_local i32 @tsdn_null(i32*) #1

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i64 @prng_lg_range_u64(i32*, i32) #1

declare dso_local i32* @tsd_prng_statep_get(i32*) #1

declare dso_local i8* @ALIGNMENT_ADDR2BASE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
