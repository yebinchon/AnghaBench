; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_octeon_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_octeon_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@octeon_flush_icache_all = common dso_local global i8* null, align 8
@flush_cache_all = common dso_local global i8* null, align 8
@__flush_cache_all = common dso_local global i8* null, align 8
@octeon_flush_cache_mm = common dso_local global i32 0, align 4
@flush_cache_mm = common dso_local global i32 0, align 4
@octeon_flush_cache_page = common dso_local global i32 0, align 4
@flush_cache_page = common dso_local global i32 0, align 4
@octeon_flush_cache_range = common dso_local global i32 0, align 4
@flush_cache_range = common dso_local global i32 0, align 4
@flush_icache_all = common dso_local global i8* null, align 8
@octeon_flush_data_cache_page = common dso_local global i32 0, align 4
@flush_data_cache_page = common dso_local global i32 0, align 4
@octeon_flush_icache_range = common dso_local global i8* null, align 8
@flush_icache_range = common dso_local global i8* null, align 8
@local_octeon_flush_icache_range = common dso_local global i8* null, align 8
@local_flush_icache_range = common dso_local global i8* null, align 8
@__flush_icache_user_range = common dso_local global i8* null, align 8
@__local_flush_icache_user_range = common dso_local global i8* null, align 8
@octeon_flush_kernel_vmap_range = common dso_local global i32 0, align 4
@__flush_kernel_vmap_range = common dso_local global i32 0, align 4
@octeon_cache_error_setup = common dso_local global i32 0, align 4
@board_cache_error_setup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_cache_init() #0 {
  %1 = call i32 (...) @probe_octeon()
  %2 = load i64, i64* @PAGE_SIZE, align 8
  %3 = sub nsw i64 %2, 1
  store i64 %3, i64* @shm_align_mask, align 8
  %4 = load i8*, i8** @octeon_flush_icache_all, align 8
  store i8* %4, i8** @flush_cache_all, align 8
  %5 = load i8*, i8** @octeon_flush_icache_all, align 8
  store i8* %5, i8** @__flush_cache_all, align 8
  %6 = load i32, i32* @octeon_flush_cache_mm, align 4
  store i32 %6, i32* @flush_cache_mm, align 4
  %7 = load i32, i32* @octeon_flush_cache_page, align 4
  store i32 %7, i32* @flush_cache_page, align 4
  %8 = load i32, i32* @octeon_flush_cache_range, align 4
  store i32 %8, i32* @flush_cache_range, align 4
  %9 = load i8*, i8** @octeon_flush_icache_all, align 8
  store i8* %9, i8** @flush_icache_all, align 8
  %10 = load i32, i32* @octeon_flush_data_cache_page, align 4
  store i32 %10, i32* @flush_data_cache_page, align 4
  %11 = load i8*, i8** @octeon_flush_icache_range, align 8
  store i8* %11, i8** @flush_icache_range, align 8
  %12 = load i8*, i8** @local_octeon_flush_icache_range, align 8
  store i8* %12, i8** @local_flush_icache_range, align 8
  %13 = load i8*, i8** @octeon_flush_icache_range, align 8
  store i8* %13, i8** @__flush_icache_user_range, align 8
  %14 = load i8*, i8** @local_octeon_flush_icache_range, align 8
  store i8* %14, i8** @__local_flush_icache_user_range, align 8
  %15 = load i32, i32* @octeon_flush_kernel_vmap_range, align 4
  store i32 %15, i32* @__flush_kernel_vmap_range, align 4
  %16 = call i32 (...) @build_clear_page()
  %17 = call i32 (...) @build_copy_page()
  %18 = load i32, i32* @octeon_cache_error_setup, align 4
  store i32 %18, i32* @board_cache_error_setup, align 4
  ret void
}

declare dso_local i32 @probe_octeon(...) #1

declare dso_local i32 @build_clear_page(...) #1

declare dso_local i32 @build_copy_page(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
