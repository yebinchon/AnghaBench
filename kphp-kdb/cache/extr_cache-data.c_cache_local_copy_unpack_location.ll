; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_unpack_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_unpack_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i32, i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"cs%d_%d/d%d/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_local_copy_unpack_location(%struct.cache_uri* %0, %struct.cache_local_copy* %1) #0 {
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca %struct.cache_local_copy*, align 8
  %5 = alloca %union.cache_packed_local_copy_location, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %3, align 8
  store %struct.cache_local_copy* %1, %struct.cache_local_copy** %4, align 8
  %6 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %7 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %11 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.cache_packed_local_copy_location* %5 to i32*
  store i32 %12, i32* %13, align 8
  %14 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %15 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = bitcast %union.cache_packed_local_copy_location* %5 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %30 = call i8* @cache_uri_get_basename(%struct.cache_uri* %29)
  %31 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28, i8* %30)
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i8* @cache_uri_get_basename(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
