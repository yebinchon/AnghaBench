; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32, i32 }

@OMAP4430_LOWPOWERSTATECHANGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powerdomain*)* @omap4_pwrdm_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_pwrdm_save_context(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %3 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %4 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %7 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %10 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @omap4_prminst_read_inst_reg(i32 %5, i32 %8, i32 %11)
  %13 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %14 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @OMAP4430_LOWPOWERSTATECHANGE_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %18 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  ret void
}

declare dso_local i32 @omap4_prminst_read_inst_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
