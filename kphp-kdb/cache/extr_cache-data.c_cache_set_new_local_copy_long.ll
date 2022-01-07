; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_new_local_copy_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_new_local_copy_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_set_new_local_copy_long = type { i32, i64 }
%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_set_new_local_copy_long*, i32)* @cache_set_new_local_copy_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_set_new_local_copy_long(%struct.lev_cache_set_new_local_copy_long* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_set_new_local_copy_long*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_uri*, align 8
  %6 = alloca %struct.cache_local_copy, align 8
  store %struct.lev_cache_set_new_local_copy_long* %0, %struct.lev_cache_set_new_local_copy_long** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %3, align 8
  %8 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = call %struct.cache_uri* @cache_get_uri_by_md5(i32* %10, i32 16)
  store %struct.cache_uri* %11, %struct.cache_uri** %5, align 8
  %12 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %13 = ptrtoint %struct.cache_uri* %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @cache_local_copy_init(%struct.cache_local_copy* %6)
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %6, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %3, align 8
  %24 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @memcpy(i64* %22, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %6, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %34 = call i32 @cache_local_copy_try_pack_location(%struct.cache_uri* %33, %struct.cache_local_copy* %6)
  %35 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %36 = call i32 @cache_set_new_local_copy(%struct.cache_uri* %35, %struct.cache_local_copy* %6)
  ret i32 %36
}

declare dso_local %struct.cache_uri* @cache_get_uri_by_md5(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_local_copy_init(%struct.cache_local_copy*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @cache_local_copy_try_pack_location(%struct.cache_uri*, %struct.cache_local_copy*) #1

declare dso_local i32 @cache_set_new_local_copy(%struct.cache_uri*, %struct.cache_local_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
