; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_get_bucket_by_packed_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_get_bucket_by_packed_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@CACHE_URI_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_bucket_by_packed_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bucket_by_packed_location(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cache_packed_local_copy_location, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.cache_packed_local_copy_location* %3 to i32*
  store i32 %4, i32* %5, align 8
  %6 = bitcast %union.cache_packed_local_copy_location* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = bitcast %union.cache_packed_local_copy_location* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 8
  %14 = add nsw i32 %8, %13
  %15 = load i32, i32* @CACHE_URI_BUCKETS, align 4
  %16 = srem i32 %14, %15
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
