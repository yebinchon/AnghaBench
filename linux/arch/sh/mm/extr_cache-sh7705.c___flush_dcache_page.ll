; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh7705.c___flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh7705.c___flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@SH_CACHE_VALID = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__flush_dcache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_dcache_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* @SH_CACHE_VALID, align 8
  %10 = load i64, i64* %2, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call i32 (...) @jump_to_uncached()
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 2), align 8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, %17
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %58, %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %50, %21
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %25, %26
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @__raw_readl(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @SH_CACHE_VALID, align 8
  %34 = or i64 536869888, %33
  %35 = and i64 %32, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i64, i64* @SH_CACHE_VALID, align 8
  %41 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %42 = or i64 %40, %41
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @__raw_writel(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %39, %29
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 4), align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %23

54:                                               ; preds = %23
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 3), align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %21, label %62

62:                                               ; preds = %58
  %63 = call i32 (...) @back_to_cached()
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
