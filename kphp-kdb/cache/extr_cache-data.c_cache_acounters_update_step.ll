; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_acounters_update_step.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_acounters_update_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cache_uri = type { i32*, %struct.cache_uri* }
%struct.amortization_counter = type { i32 }

@acounter_off = common dso_local global i32 0, align 4
@acounter_uncached_bucket_id = common dso_local global i32 0, align 4
@acounter_relax_collector = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@H = common dso_local global %struct.cache_uri** null, align 8
@TAT = common dso_local global i64 0, align 8
@uri_hash_prime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_acounters_update_step(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_uri*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @acounter_off, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @acounter_uncached_bucket_id, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acounter_relax_collector, i32 0, i32 0), align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %67, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %68

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %29, i64 %31
  %33 = load %struct.cache_uri*, %struct.cache_uri** %32, align 8
  store %struct.cache_uri* %33, %struct.cache_uri** %7, align 8
  br label %34

34:                                               ; preds = %54, %26
  %35 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %36 = icmp ne %struct.cache_uri* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i64, i64* @TAT, align 8
  %39 = load i32, i32* @acounter_uncached_bucket_id, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %43 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to %struct.amortization_counter*
  %49 = call i32 @amortization_counter_update(i64 %41, %struct.amortization_counter* %48)
  %50 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %51 = call i32 @cache_uri_bucket_reuse(%struct.cache_uri* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %37
  %55 = load %struct.cache_uri*, %struct.cache_uri** %7, align 8
  %56 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %55, i32 0, i32 1
  %57 = load %struct.cache_uri*, %struct.cache_uri** %56, align 8
  store %struct.cache_uri* %57, %struct.cache_uri** %7, align 8
  br label %34

58:                                               ; preds = %34
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @uri_hash_prime, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @uri_hash_prime, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %16

68:                                               ; preds = %24
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acounter_relax_collector, i32 0, i32 0), align 4
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @amortization_counter_update(i64, %struct.amortization_counter*) #1

declare dso_local i32 @cache_uri_bucket_reuse(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
