; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_flush_dcache_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_flush_dcache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_dcache_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_dcache_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  %7 = shl i64 %5, %6
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 2), align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %4, %9
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %20, %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @__raw_writel(i32 0, i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %1, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @__raw_writel(i32 0, i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %1, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @__raw_writel(i32 0, i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @__raw_writel(i32 0, i64 %36)
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %1, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @__raw_writel(i32 0, i64 %41)
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %1, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @__raw_writel(i32 0, i64 %46)
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %1, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = call i32 @__raw_writel(i32 0, i64 %51)
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %1, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @__raw_writel(i32 0, i64 %56)
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %1, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %1, align 8
  br label %16

61:                                               ; preds = %16
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
