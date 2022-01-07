; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_register_pwrdms.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_register_pwrdms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }

@arch_pwrdm = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_register_pwrdms(%struct.powerdomain** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain**, align 8
  %4 = alloca %struct.powerdomain**, align 8
  store %struct.powerdomain** %0, %struct.powerdomain*** %3, align 8
  store %struct.powerdomain** null, %struct.powerdomain*** %4, align 8
  %5 = load i32, i32* @arch_pwrdm, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EEXIST, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.powerdomain**, %struct.powerdomain*** %3, align 8
  %12 = icmp ne %struct.powerdomain** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %10
  %17 = load %struct.powerdomain**, %struct.powerdomain*** %3, align 8
  store %struct.powerdomain** %17, %struct.powerdomain*** %4, align 8
  br label %18

18:                                               ; preds = %26, %16
  %19 = load %struct.powerdomain**, %struct.powerdomain*** %4, align 8
  %20 = load %struct.powerdomain*, %struct.powerdomain** %19, align 8
  %21 = icmp ne %struct.powerdomain* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.powerdomain**, %struct.powerdomain*** %4, align 8
  %24 = load %struct.powerdomain*, %struct.powerdomain** %23, align 8
  %25 = call i32 @_pwrdm_register(%struct.powerdomain* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load %struct.powerdomain**, %struct.powerdomain*** %4, align 8
  %28 = getelementptr inbounds %struct.powerdomain*, %struct.powerdomain** %27, i32 1
  store %struct.powerdomain** %28, %struct.powerdomain*** %4, align 8
  br label %18

29:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %13, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @_pwrdm_register(%struct.powerdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
