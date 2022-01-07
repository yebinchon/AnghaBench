; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_create_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_create_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.msi_domain_info = type { i32 }
%struct.irq_domain = type { i32 }

@MSI_FLAG_LEVEL_CAPABLE = common dso_local global i32 0, align 4
@MSI_FLAG_USE_DEF_DOM_OPS = common dso_local global i32 0, align 4
@MSI_FLAG_USE_DEF_CHIP_OPS = common dso_local global i32 0, align 4
@DOMAIN_BUS_FSL_MC_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @fsl_mc_msi_create_irq_domain(%struct.fwnode_handle* %0, %struct.msi_domain_info* %1, %struct.irq_domain* %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.msi_domain_info*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.msi_domain_info* %1, %struct.msi_domain_info** %5, align 8
  store %struct.irq_domain* %2, %struct.irq_domain** %6, align 8
  %8 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %9 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MSI_FLAG_LEVEL_CAPABLE, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @MSI_FLAG_LEVEL_CAPABLE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %19 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %24 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSI_FLAG_USE_DEF_DOM_OPS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %31 = call i32 @fsl_mc_msi_update_dom_ops(%struct.msi_domain_info* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %34 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSI_FLAG_USE_DEF_CHIP_OPS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %41 = call i32 @fsl_mc_msi_update_chip_ops(%struct.msi_domain_info* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %44 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %45 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %46 = call %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* %43, %struct.msi_domain_info* %44, %struct.irq_domain* %45)
  store %struct.irq_domain* %46, %struct.irq_domain** %7, align 8
  %47 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %48 = icmp ne %struct.irq_domain* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %51 = load i32, i32* @DOMAIN_BUS_FSL_MC_MSI, align 4
  %52 = call i32 @irq_domain_update_bus_token(%struct.irq_domain* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  ret %struct.irq_domain* %54
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fsl_mc_msi_update_dom_ops(%struct.msi_domain_info*) #1

declare dso_local i32 @fsl_mc_msi_update_chip_ops(%struct.msi_domain_info*) #1

declare dso_local %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle*, %struct.msi_domain_info*, %struct.irq_domain*) #1

declare dso_local i32 @irq_domain_update_bus_token(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
