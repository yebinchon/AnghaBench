; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_fsl.c_sata_fsl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_fsl.c_sata_fsl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.sata_fsl_host_priv* }
%struct.sata_fsl_host_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sata_fsl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_fsl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.sata_fsl_host_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ata_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ata_host* %6, %struct.ata_host** %3, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 0
  %9 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %8, align 8
  store %struct.sata_fsl_host_priv* %9, %struct.sata_fsl_host_priv** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %13 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %12, i32 0, i32 3
  %14 = call i32 @device_remove_file(i32* %11, i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %17, i32 0, i32 2
  %19 = call i32 @device_remove_file(i32* %16, i32* %18)
  %20 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %21 = call i32 @ata_host_detach(%struct.ata_host* %20)
  %22 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %23 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @irq_dispose_mapping(i32 %24)
  %26 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %27 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  %30 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %31 = call i32 @kfree(%struct.sata_fsl_host_priv* %30)
  ret i32 0
}

declare dso_local %struct.ata_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sata_fsl_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
