; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-iommu.c_omap_iommu_set_pwrdm_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-iommu.c_omap_iommu_set_pwrdm_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.powerdomain = type { i32 }
%struct.omap_device = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWRDM_POWER_RET = common dso_local global i32 0, align 4
@PWRDM_POWER_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_iommu_set_pwrdm_constraint(%struct.platform_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.powerdomain*, align 8
  %9 = alloca %struct.omap_device*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.omap_device* @to_omap_device(%struct.platform_device* %11)
  store %struct.omap_device* %12, %struct.omap_device** %9, align 8
  %13 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %14 = icmp ne %struct.omap_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %20 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %28 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.powerdomain* @omap_hwmod_get_pwrdm(i32 %31)
  store %struct.powerdomain* %32, %struct.powerdomain** %8, align 8
  %33 = load %struct.powerdomain*, %struct.powerdomain** %8, align 8
  %34 = icmp ne %struct.powerdomain* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %64

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.powerdomain*, %struct.powerdomain** %8, align 8
  %43 = call i32 @pwrdm_read_next_pwrst(%struct.powerdomain* %42)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PWRDM_POWER_RET, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %64

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @PWRDM_POWER_ON, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %10, align 4
  %61 = load %struct.powerdomain*, %struct.powerdomain** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @pwrdm_set_next_pwrst(%struct.powerdomain* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %50, %35, %23, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.omap_device* @to_omap_device(%struct.platform_device*) #1

declare dso_local %struct.powerdomain* @omap_hwmod_get_pwrdm(i32) #1

declare dso_local i32 @pwrdm_read_next_pwrst(%struct.powerdomain*) #1

declare dso_local i32 @pwrdm_set_next_pwrst(%struct.powerdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
