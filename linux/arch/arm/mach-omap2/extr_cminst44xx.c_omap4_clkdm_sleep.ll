; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, i32, i32 }

@CLKDM_CAN_HWSUP = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap4_clkdm_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clkdm_sleep(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %4 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %5 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CLKDM_CAN_HWSUP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %15 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %18 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @omap4_cminst_clkdm_enable_hwsup(i32 %13, i32 %16, i32 %19)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %23 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %30 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %33 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %36 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @omap4_cminst_clkdm_force_sleep(i32 %31, i32 %34, i32 %37)
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %10
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @omap4_cminst_clkdm_enable_hwsup(i32, i32, i32) #1

declare dso_local i32 @omap4_cminst_clkdm_force_sleep(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
