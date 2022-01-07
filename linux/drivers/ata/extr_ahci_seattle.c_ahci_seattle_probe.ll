; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_ahci_seattle_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_ahci_seattle_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ahci_host_priv = type { i32 }

@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ahci_seattle_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_seattle_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_host_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %6, i32 0)
  store %struct.ahci_host_priv* %7, %struct.ahci_host_priv** %5, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %9 = call i64 @IS_ERR(%struct.ahci_host_priv* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.ahci_host_priv* %12)
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %16 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %26 = call i32 @ahci_seattle_get_port_info(%struct.platform_device* %24, %struct.ahci_host_priv* %25)
  %27 = call i32 @ahci_platform_init_host(%struct.platform_device* %22, %struct.ahci_host_priv* %23, i32 %26, i32* @ahci_platform_sht)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %30
  %33 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %5, align 8
  %34 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %31, %19, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32, i32*) #1

declare dso_local i32 @ahci_seattle_get_port_info(%struct.platform_device*, %struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
