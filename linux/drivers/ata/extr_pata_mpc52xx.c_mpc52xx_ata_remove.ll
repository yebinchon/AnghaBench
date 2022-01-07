; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.mpc52xx_ata_priv* }
%struct.mpc52xx_ata_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_ata_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.mpc52xx_ata_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.ata_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.ata_host* %7, %struct.ata_host** %3, align 8
  %8 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %9 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %8, i32 0, i32 0
  %10 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %9, align 8
  store %struct.mpc52xx_ata_priv* %10, %struct.mpc52xx_ata_priv** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @ata_platform_remove_one(%struct.platform_device* %11)
  %13 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bcom_get_task_irq(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @irq_dispose_mapping(i32 %17)
  %19 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bcom_ata_release(i32 %21)
  %23 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irq_dispose_mapping(i32 %25)
  ret i32 0
}

declare dso_local %struct.ata_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ata_platform_remove_one(%struct.platform_device*) #1

declare dso_local i32 @bcom_get_task_irq(i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @bcom_ata_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
