; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh2a.c_sh2a_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh2a.c_sh2a_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flusher_data = type { i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_ICACHE_PAGES = common dso_local global i64 0, align 8
@SH_CCR = common dso_local global i32 0, align 4
@CCR_ICACHE_INVALIDATE = common dso_local global i32 0, align 4
@CACHE_IC_ADDRESS_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh2a_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2a_flush_icache_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flusher_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.flusher_data*
  store %struct.flusher_data* %9, %struct.flusher_data** %3, align 8
  %10 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %11 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @L1_CACHE_BYTES, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %19 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @L1_CACHE_BYTES, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @L1_CACHE_BYTES, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = call i32 (...) @jump_to_uncached()
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  %37 = load i64, i64* @MAX_ICACHE_PAGES, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load i32, i32* @SH_CCR, align 4
  %41 = call i32 @__raw_readl(i32 %40)
  %42 = load i32, i32* @CCR_ICACHE_INVALIDATE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SH_CCR, align 4
  %45 = call i32 @__raw_writel(i32 %43, i32 %44)
  br label %62

46:                                               ; preds = %1
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %56, %46
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @CACHE_IC_ADDRESS_ARRAY, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @sh2a_invalidate_line(i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @L1_CACHE_BYTES, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %48

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %39
  %63 = call i32 (...) @back_to_cached()
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @sh2a_invalidate_line(i32, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
