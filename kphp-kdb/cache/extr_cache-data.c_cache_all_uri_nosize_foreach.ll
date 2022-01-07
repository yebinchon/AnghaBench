; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_all_uri_nosize_foreach.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_all_uri_nosize_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type opaque
%struct.cache_uri.0 = type opaque
%struct.cache_uri.1 = type opaque

@cgsl_order_top = common dso_local global i32 0, align 4
@cgsl_order_bottom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_all_uri_nosize_foreach(void (%struct.cache_uri*)* %0, i32 %1) #0 {
  %3 = alloca void (%struct.cache_uri*)*, align 8
  %4 = alloca i32, align 4
  store void (%struct.cache_uri*)* %0, void (%struct.cache_uri*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @cgsl_order_top, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %3, align 8
  %10 = bitcast void (%struct.cache_uri*)* %9 to void (%struct.cache_uri.0*)*
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @cache_all_uri_cached_nosize_foreach(void (%struct.cache_uri.0*)* %10, i32 %11)
  %13 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %3, align 8
  %14 = bitcast void (%struct.cache_uri*)* %13 to void (%struct.cache_uri.1*)*
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cache_all_uri_uncached_nosize_foreach(void (%struct.cache_uri.1*)* %14, i32 %15)
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @cgsl_order_bottom, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %3, align 8
  %24 = bitcast void (%struct.cache_uri*)* %23 to void (%struct.cache_uri.1*)*
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cache_all_uri_uncached_nosize_foreach(void (%struct.cache_uri.1*)* %24, i32 %25)
  %27 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %3, align 8
  %28 = bitcast void (%struct.cache_uri*)* %27 to void (%struct.cache_uri.0*)*
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cache_all_uri_cached_nosize_foreach(void (%struct.cache_uri.0*)* %28, i32 %29)
  br label %31

31:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @cache_all_uri_cached_nosize_foreach(void (%struct.cache_uri.0*)*, i32) #1

declare dso_local i32 @cache_all_uri_uncached_nosize_foreach(void (%struct.cache_uri.1*)*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
