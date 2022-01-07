; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r3k_flush_cache_all = common dso_local global i32 0, align 4
@flush_cache_all = common dso_local global i32 0, align 4
@r3k___flush_cache_all = common dso_local global i32 0, align 4
@__flush_cache_all = common dso_local global i32 0, align 4
@r3k_flush_cache_mm = common dso_local global i32 0, align 4
@flush_cache_mm = common dso_local global i32 0, align 4
@r3k_flush_cache_range = common dso_local global i32 0, align 4
@flush_cache_range = common dso_local global i32 0, align 4
@r3k_flush_cache_page = common dso_local global i32 0, align 4
@flush_cache_page = common dso_local global i32 0, align 4
@r3k_flush_icache_range = common dso_local global i8* null, align 8
@flush_icache_range = common dso_local global i8* null, align 8
@local_flush_icache_range = common dso_local global i8* null, align 8
@__flush_icache_user_range = common dso_local global i8* null, align 8
@__local_flush_icache_user_range = common dso_local global i8* null, align 8
@r3k_flush_kernel_vmap_range = common dso_local global i32 0, align 4
@__flush_kernel_vmap_range = common dso_local global i32 0, align 4
@local_r3k_flush_data_cache_page = common dso_local global i32 0, align 4
@local_flush_data_cache_page = common dso_local global i32 0, align 4
@r3k_flush_data_cache_page = common dso_local global i32 0, align 4
@flush_data_cache_page = common dso_local global i32 0, align 4
@r3k_dma_cache_wback_inv = common dso_local global i8* null, align 8
@_dma_cache_wback_inv = common dso_local global i8* null, align 8
@_dma_cache_wback = common dso_local global i8* null, align 8
@_dma_cache_inv = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Primary instruction cache %ldkB, linesize %ld bytes.\0A\00", align 1
@icache_size = common dso_local global i32 0, align 4
@icache_lsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Primary data cache %ldkB, linesize %ld bytes.\0A\00", align 1
@dcache_size = common dso_local global i32 0, align 4
@dcache_lsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r3k_cache_init() #0 {
  %1 = call i32 (...) @r3k_probe_cache()
  %2 = load i32, i32* @r3k_flush_cache_all, align 4
  store i32 %2, i32* @flush_cache_all, align 4
  %3 = load i32, i32* @r3k___flush_cache_all, align 4
  store i32 %3, i32* @__flush_cache_all, align 4
  %4 = load i32, i32* @r3k_flush_cache_mm, align 4
  store i32 %4, i32* @flush_cache_mm, align 4
  %5 = load i32, i32* @r3k_flush_cache_range, align 4
  store i32 %5, i32* @flush_cache_range, align 4
  %6 = load i32, i32* @r3k_flush_cache_page, align 4
  store i32 %6, i32* @flush_cache_page, align 4
  %7 = load i8*, i8** @r3k_flush_icache_range, align 8
  store i8* %7, i8** @flush_icache_range, align 8
  %8 = load i8*, i8** @r3k_flush_icache_range, align 8
  store i8* %8, i8** @local_flush_icache_range, align 8
  %9 = load i8*, i8** @r3k_flush_icache_range, align 8
  store i8* %9, i8** @__flush_icache_user_range, align 8
  %10 = load i8*, i8** @r3k_flush_icache_range, align 8
  store i8* %10, i8** @__local_flush_icache_user_range, align 8
  %11 = load i32, i32* @r3k_flush_kernel_vmap_range, align 4
  store i32 %11, i32* @__flush_kernel_vmap_range, align 4
  %12 = load i32, i32* @local_r3k_flush_data_cache_page, align 4
  store i32 %12, i32* @local_flush_data_cache_page, align 4
  %13 = load i32, i32* @r3k_flush_data_cache_page, align 4
  store i32 %13, i32* @flush_data_cache_page, align 4
  %14 = load i8*, i8** @r3k_dma_cache_wback_inv, align 8
  store i8* %14, i8** @_dma_cache_wback_inv, align 8
  %15 = load i8*, i8** @r3k_dma_cache_wback_inv, align 8
  store i8* %15, i8** @_dma_cache_wback, align 8
  %16 = load i8*, i8** @r3k_dma_cache_wback_inv, align 8
  store i8* %16, i8** @_dma_cache_inv, align 8
  %17 = load i32, i32* @icache_size, align 4
  %18 = ashr i32 %17, 10
  %19 = load i32, i32* @icache_lsize, align 4
  %20 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @dcache_size, align 4
  %22 = ashr i32 %21, 10
  %23 = load i32, i32* @dcache_lsize, align 4
  %24 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  call void @build_clear_page()
  call void @build_copy_page()
  ret void
}

declare dso_local i32 @r3k_probe_cache(...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local void @build_clear_page() #1

declare dso_local void @build_copy_page() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
