; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_local_copy_short.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_local_copy_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_set_new_local_copy_short = type { i32, i64 }
%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i32, i32 }

@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_cache_set_new_local_copy_short*)* @cache_delete_local_copy_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_delete_local_copy_short(%struct.lev_cache_set_new_local_copy_short* %0) #0 {
  %2 = alloca %struct.lev_cache_set_new_local_copy_short*, align 8
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca %struct.cache_local_copy, align 4
  store %struct.lev_cache_set_new_local_copy_short* %0, %struct.lev_cache_set_new_local_copy_short** %2, align 8
  %5 = load %struct.lev_cache_set_new_local_copy_short*, %struct.lev_cache_set_new_local_copy_short** %2, align 8
  %6 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_short, %struct.lev_cache_set_new_local_copy_short* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = call %struct.cache_uri* @cache_get_uri_by_md5(i32* %8, i32 8)
  store %struct.cache_uri* %9, %struct.cache_uri** %3, align 8
  %10 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %11 = call i32 @assert(%struct.cache_uri* %10)
  %12 = call i32 @memset(%struct.cache_local_copy* %4, i32 0, i32 8)
  %13 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %14 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load %struct.lev_cache_set_new_local_copy_short*, %struct.lev_cache_set_new_local_copy_short** %2, align 8
  %18 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_short, %struct.lev_cache_set_new_local_copy_short* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %22 = call i32 @cache_delete_local_copy(%struct.cache_uri* %21, %struct.cache_local_copy* %4)
  ret i32 %22
}

declare dso_local %struct.cache_uri* @cache_get_uri_by_md5(i32*, i32) #1

declare dso_local i32 @assert(%struct.cache_uri*) #1

declare dso_local i32 @memset(%struct.cache_local_copy*, i32, i32) #1

declare dso_local i32 @cache_delete_local_copy(%struct.cache_uri*, %struct.cache_local_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
