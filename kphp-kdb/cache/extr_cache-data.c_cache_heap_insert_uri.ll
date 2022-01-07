; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_insert_uri.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_heap_insert_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i32 }

@heap_acounter_off = common dso_local global i64 0, align 8
@tbl_foreach = common dso_local global i32 0, align 4
@heap_foreach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_uri*)* @cache_heap_insert_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_heap_insert_uri(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca %struct.amortization_counter*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %4 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %5 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @heap_acounter_off, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = bitcast i32* %8 to %struct.amortization_counter*
  store %struct.amortization_counter* %9, %struct.amortization_counter** %3, align 8
  %10 = load i32, i32* @tbl_foreach, align 4
  %11 = load %struct.amortization_counter*, %struct.amortization_counter** %3, align 8
  %12 = call i32 @amortization_counter_update(i32 %10, %struct.amortization_counter* %11)
  %13 = load i32, i32* @heap_foreach, align 4
  %14 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %15 = call i32 @cache_heap_insert(i32 %13, %struct.cache_uri* %14)
  ret void
}

declare dso_local i32 @amortization_counter_update(i32, %struct.amortization_counter*) #1

declare dso_local i32 @cache_heap_insert(i32, %struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
