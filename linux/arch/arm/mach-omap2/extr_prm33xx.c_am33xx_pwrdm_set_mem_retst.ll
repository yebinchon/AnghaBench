; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_set_mem_retst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_pwrdm_set_mem_retst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*, i64, i64)* @am33xx_pwrdm_set_mem_retst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am33xx_pwrdm_set_mem_retst(%struct.powerdomain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powerdomain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %10 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @__ffs(i32 %23)
  %25 = shl i64 %22, %24
  %26 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %27 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %30 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @am33xx_prm_rmw_reg_bits(i32 %21, i64 %25, i32 %28, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @am33xx_prm_rmw_reg_bits(i32, i64, i32, i32) #1

declare dso_local i64 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
