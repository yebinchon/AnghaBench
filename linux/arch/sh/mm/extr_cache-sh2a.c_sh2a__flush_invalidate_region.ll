; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_invalidate_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_invalidate_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_OCACHE_PAGES = common dso_local global i64 0, align 8
@SH_CCR = common dso_local global i32 0, align 4
@CCR_OCACHE_INVALIDATE = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh2a__flush_invalidate_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2a__flush_invalidate_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i32, i32* @L1_CACHE_BYTES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = and i64 %10, %14
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load i32, i32* @L1_CACHE_BYTES, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = sub i64 %23, 1
  %25 = load i32, i32* @L1_CACHE_BYTES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = and i64 %24, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = call i32 (...) @jump_to_uncached()
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i64, i64* @MAX_OCACHE_PAGES, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @SH_CCR, align 4
  %42 = call i32 @__raw_readl(i32 %41)
  %43 = load i32, i32* @CCR_OCACHE_INVALIDATE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SH_CCR, align 4
  %46 = call i32 @__raw_writel(i32 %44, i32 %45)
  br label %63

47:                                               ; preds = %2
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %57, %47
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* @CACHE_OC_ADDRESS_ARRAY, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @sh2a_invalidate_line(i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @L1_CACHE_BYTES, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %5, align 8
  br label %49

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %40
  %64 = call i32 (...) @back_to_cached()
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
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
