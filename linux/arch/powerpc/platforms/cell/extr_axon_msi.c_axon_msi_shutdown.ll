; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_axon_msi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_axon_msi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.axon_msic = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"axon_msi: disabling %pOF\0A\00", align 1
@MSIC_CTRL_REG = common dso_local global i32 0, align 4
@MSIC_CTRL_ENABLE = common dso_local global i32 0, align 4
@MSIC_CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @axon_msi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axon_msi_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.axon_msic*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.axon_msic* @dev_get_drvdata(i32* %6)
  store %struct.axon_msic* %7, %struct.axon_msic** %3, align 8
  %8 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %9 = getelementptr inbounds %struct.axon_msic, %struct.axon_msic* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @irq_domain_get_of_node(i32 %10)
  %12 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %14 = getelementptr inbounds %struct.axon_msic, %struct.axon_msic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MSIC_CTRL_REG, align 4
  %17 = call i32 @dcr_read(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MSIC_CTRL_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @MSIC_CTRL_IRQ_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %26 = load i32, i32* @MSIC_CTRL_REG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @msic_dcr_write(%struct.axon_msic* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local %struct.axon_msic* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @irq_domain_get_of_node(i32) #1

declare dso_local i32 @dcr_read(i32, i32) #1

declare dso_local i32 @msic_dcr_write(%struct.axon_msic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
