; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_probe.c_cpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_probe.c_cpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CACHE_OC_ADDRESS_ARRAY = common dso_local global i32 0, align 4
@SH_CACHE_VALID = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CPU_SH7708 = common dso_local global i32 0, align 4
@CPU_HAS_MMU_PAGE_ASSOC = common dso_local global i32 0, align 4
@CPU_SH7729 = common dso_local global i32 0, align 4
@SH_CACHE_COMBINED = common dso_local global i32 0, align 4
@CPU_FAMILY_SH3 = common dso_local global i32 0, align 4
@CCR3_REG = common dso_local global i64 0, align 8
@CCR_CACHE_16KB = common dso_local global i64 0, align 8
@CCR_CACHE_32KB = common dso_local global i64 0, align 8
@CPU_SH7705 = common dso_local global i32 0, align 4
@CPU_SH7706 = common dso_local global i32 0, align 4
@CPU_SH7710 = common dso_local global i32 0, align 4
@CPU_SH7712 = common dso_local global i32 0, align 4
@CPU_SH7720 = common dso_local global i32 0, align 4
@CPU_SH7721 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_probe() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @jump_to_uncached()
  %8 = load i32, i32* @CACHE_OC_ADDRESS_ARRAY, align 4
  %9 = add nsw i32 %8, 12288
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  %11 = load i32, i32* @CACHE_OC_ADDRESS_ARRAY, align 4
  %12 = add nsw i32 %11, 4096
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SH_CACHE_VALID, align 8
  %18 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %19 = or i64 %17, %18
  %20 = xor i64 %19, -1
  %21 = and i64 %16, %20
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @__raw_writel(i64 %21, i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @__raw_readl(i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @SH_CACHE_VALID, align 8
  %28 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %29 = or i64 %27, %28
  %30 = xor i64 %29, -1
  %31 = and i64 %26, %30
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @__raw_writel(i64 %31, i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = call i64 @__raw_readl(i64 %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* @SH_CACHE_VALID, align 8
  %37 = load i64, i64* %3, align 8
  %38 = xor i64 %37, %36
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @__raw_writel(i64 %39, i64 %40)
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @__raw_readl(i64 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @SH_CACHE_VALID, align 8
  %46 = xor i64 %44, %45
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @__raw_writel(i64 %47, i64 %48)
  %50 = load i64, i64* %1, align 8
  %51 = call i64 @__raw_readl(i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @SH_CACHE_VALID, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @__raw_writel(i64 %55, i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @SH_CACHE_VALID, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  %62 = load i64, i64* %2, align 8
  %63 = call i32 @__raw_writel(i64 %61, i64 %62)
  %64 = call i32 (...) @back_to_cached()
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 1), align 4
  %65 = load i32, i32* @L1_CACHE_BYTES, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 5), align 4
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %0
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  store i32 2048, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 2), align 4
  store i32 2032, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 3), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 4), align 4
  %74 = load i32, i32* @CPU_SH7708, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 3), align 4
  %75 = load i32, i32* @CPU_HAS_MMU_PAGE_ASSOC, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 4), align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 4), align 4
  br label %80

78:                                               ; preds = %69, %0
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 2), align 4
  store i32 4080, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 3), align 4
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 4), align 4
  %79 = load i32, i32* @CPU_SH7729, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 3), align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* @SH_CACHE_COMBINED, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 5), align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 5), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 2) to i8*), i8* align 4 bitcast (%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1) to i8*), i64 28, i1 false)
  %84 = load i32, i32* @CPU_FAMILY_SH3, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
