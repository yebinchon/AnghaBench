; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_add_wkup_sleep_dep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_add_wkup_sleep_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i64, i32, i32 }

@OMAP4_CM_STATICDEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*, %struct.clockdomain*)* @omap4_clkdm_add_wkup_sleep_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clkdm_add_wkup_sleep_dep(%struct.clockdomain* %0, %struct.clockdomain* %1) #0 {
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store %struct.clockdomain* %1, %struct.clockdomain** %4, align 8
  %5 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %6 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 1, %7
  %9 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %10 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %13 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %16 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OMAP4_CM_STATICDEP, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @omap4_cminst_set_inst_reg_bits(i32 %8, i32 %11, i32 %14, i64 %19)
  ret i32 0
}

declare dso_local i32 @omap4_cminst_set_inst_reg_bits(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
