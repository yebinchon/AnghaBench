; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91sam9_sdram_standby.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91sam9_sdram_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@soc_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AT91_SDRAMC_LPR = common dso_local global i32 0, align 4
@AT91_SDRAMC_LPCB = common dso_local global i32 0, align 4
@AT91_SDRAMC_LPCB_SELF_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at91sam9_sdram_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91sam9_sdram_standby() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %11 = call i32 @at91_ramc_read(i32 1, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AT91_SDRAMC_LPCB, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @AT91_SDRAMC_LPCB_SELF_REFRESH, align 4
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %0
  %20 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %21 = call i32 @at91_ramc_read(i32 0, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AT91_SDRAMC_LPCB, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @AT91_SDRAMC_LPCB_SELF_REFRESH, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @at91_ramc_write(i32 0, i32 %29, i32 %30)
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @at91_ramc_write(i32 1, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %19
  %41 = call i32 (...) @cpu_do_idle()
  %42 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @at91_ramc_write(i32 0, i32 %42, i32 %43)
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @AT91_SDRAMC_LPR, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @at91_ramc_write(i32 1, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %40
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
