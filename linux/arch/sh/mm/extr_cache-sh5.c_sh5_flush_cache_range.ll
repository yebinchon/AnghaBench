; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh5_flush_cache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh5.c_sh5_flush_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flusher_data = type { i64, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh5_flush_cache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh5_flush_cache_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flusher_data*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.flusher_data*
  store %struct.flusher_data* %8, %struct.flusher_data** %3, align 8
  %9 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %10 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %9, i32 0, i32 2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %13 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %16 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @sh64_dcache_purge_user_range(i32 %20, i64 %21, i64 %22)
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @sh64_icache_inv_user_page_range(i32 %26, i64 %27, i64 %28)
  ret void
}

declare dso_local i32 @sh64_dcache_purge_user_range(i32, i64, i64) #1

declare dso_local i32 @sh64_icache_inv_user_page_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
