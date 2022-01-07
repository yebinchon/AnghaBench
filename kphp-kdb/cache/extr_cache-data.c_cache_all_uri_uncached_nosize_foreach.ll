; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_all_uri_uncached_nosize_foreach.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_all_uri_uncached_nosize_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type opaque
%struct.cache_uri.0 = type opaque

@list_uncached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.cache_uri*)*, i32)* @cache_all_uri_uncached_nosize_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_all_uri_uncached_nosize_foreach(void (%struct.cache_uri*)* %0, i32 %1) #0 {
  %3 = alloca void (%struct.cache_uri*)*, align 8
  %4 = alloca i32, align 4
  store void (%struct.cache_uri*)* %0, void (%struct.cache_uri*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load void (%struct.cache_uri*)*, void (%struct.cache_uri*)** %3, align 8
  %6 = bitcast void (%struct.cache_uri*)* %5 to void (%struct.cache_uri.0*)*
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @list_uncached, align 4
  %9 = call i32 @cache_uri_lists_nosize_foreach(void (%struct.cache_uri.0*)* %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @cache_uri_lists_nosize_foreach(void (%struct.cache_uri.0*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
