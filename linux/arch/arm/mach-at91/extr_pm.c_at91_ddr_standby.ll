; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_ddr_standby.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_ddr_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@AT91_DDRSDRC_MDR = common dso_local global i32 0, align 4
@AT91_DDRSDRC_MD = common dso_local global i32 0, align 4
@AT91_DDRSDRC_MD_LOW_POWER_DDR = common dso_local global i32 0, align 4
@AT91_DDRSDRC_MD_DDR2 = common dso_local global i32 0, align 4
@soc_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AT91_DDRSDRC_LPR = common dso_local global i32 0, align 4
@AT91_DDRSDRC_LPCB = common dso_local global i32 0, align 4
@AT91_DDRSDRC_LPCB_SELF_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at91_ddr_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_ddr_standby() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %9 = call i32 @at91_ramc_read(i32 0, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AT91_DDRSDRC_MD, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @AT91_DDRSDRC_MD_LOW_POWER_DDR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %0
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AT91_DDRSDRC_MD, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @AT91_DDRSDRC_MD_DDR2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @at91_ramc_write(i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %0
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %33 = call i32 @at91_ramc_read(i32 1, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AT91_DDRSDRC_LPCB, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @AT91_DDRSDRC_LPCB_SELF_REFRESH, align 4
  %39 = load i32, i32* %2, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %42 = call i32 @at91_ramc_read(i32 1, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AT91_DDRSDRC_MD, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @AT91_DDRSDRC_MD_LOW_POWER_DDR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AT91_DDRSDRC_MD, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @AT91_DDRSDRC_MD_DDR2, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @at91_ramc_write(i32 1, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %31
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %62 = call i32 @at91_ramc_read(i32 0, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @AT91_DDRSDRC_LPCB, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* @AT91_DDRSDRC_LPCB_SELF_REFRESH, align 4
  %68 = load i32, i32* %1, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @at91_ramc_write(i32 0, i32 %70, i32 %71)
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %60
  %78 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @at91_ramc_write(i32 1, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %60
  %82 = call i32 (...) @cpu_do_idle()
  %83 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @at91_ramc_write(i32 0, i32 %83, i32 %84)
  %86 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @at91_ramc_write(i32 0, i32 %86, i32 %87)
  %89 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load i32, i32* @AT91_DDRSDRC_MDR, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @at91_ramc_write(i32 0, i32 %94, i32 %95)
  %97 = load i32, i32* @AT91_DDRSDRC_LPR, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @at91_ramc_write(i32 1, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %81
  ret void
}

declare dso_local i32 @at91_ramc_read(i32, i32) #1

declare dso_local i32 @at91_ramc_write(i32, i32, i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
