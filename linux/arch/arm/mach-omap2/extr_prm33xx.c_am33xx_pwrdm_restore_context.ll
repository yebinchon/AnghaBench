; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32, i32 }

@OMAP_POWERSTATEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powerdomain*)* @am33xx_pwrdm_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am33xx_pwrdm_restore_context(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %5 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %6 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %9 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @am33xx_prm_read_reg(i32 %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %13 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %16 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %19 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @am33xx_prm_write_reg(i32 %14, i32 %17, i32 %20)
  %22 = load i32, i32* @OMAP_POWERSTATEST_MASK, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @OMAP_POWERSTATEST_MASK, align 4
  %26 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %27 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %35 = call i32 @am33xx_pwrdm_wait_transition(%struct.powerdomain* %34)
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @am33xx_prm_read_reg(i32, i32) #1

declare dso_local i32 @am33xx_prm_write_reg(i32, i32, i32) #1

declare dso_local i32 @am33xx_pwrdm_wait_transition(%struct.powerdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
