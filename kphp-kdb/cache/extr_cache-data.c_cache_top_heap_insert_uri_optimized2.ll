; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_heap_insert_uri_optimized2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_top_heap_insert_uri_optimized2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.cache_uri** }
%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i64 }

@heap_acounter_off = common dso_local global i64 0, align 8
@tbl_foreach = common dso_local global i32 0, align 4
@heap_foreach = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_uri*)* @cache_top_heap_insert_uri_optimized2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_top_heap_insert_uri_optimized2(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca %struct.amortization_counter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %7 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @heap_acounter_off, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = bitcast i32* %10 to %struct.amortization_counter*
  store %struct.amortization_counter* %11, %struct.amortization_counter** %3, align 8
  %12 = call i64 @GET_HEAP_VALUE(i32 1)
  %13 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %14 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %1
  %21 = load i32, i32* @tbl_foreach, align 4
  %22 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %23 = call i32 @amortization_counter_update(i32 %21, %struct.amortization_counter* %22)
  %24 = call i64 @GET_HEAP_VALUE(i32 1)
  %25 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %26 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %63
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %78

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @GET_HEAP_VALUE(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i64 @GET_HEAP_VALUE(i32 %49)
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %45, %39
  %56 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %57 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @GET_HEAP_VALUE(i32 %59)
  %61 = icmp sle i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %78

63:                                               ; preds = %55
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.cache_uri**, %struct.cache_uri*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %66, i64 %68
  %70 = load %struct.cache_uri*, %struct.cache_uri** %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.cache_uri**, %struct.cache_uri*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %73, i64 %75
  store %struct.cache_uri* %70, %struct.cache_uri** %76, align 8
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %4, align 4
  br label %30

78:                                               ; preds = %62, %38
  %79 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @heap_foreach, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.cache_uri**, %struct.cache_uri*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %82, i64 %84
  store %struct.cache_uri* %79, %struct.cache_uri** %85, align 8
  br label %86

86:                                               ; preds = %78, %20
  br label %87

87:                                               ; preds = %86, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @GET_HEAP_VALUE(i32) #1

declare dso_local i32 @amortization_counter_update(i32, %struct.amortization_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
