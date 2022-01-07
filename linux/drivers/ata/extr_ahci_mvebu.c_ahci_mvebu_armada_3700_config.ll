; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_armada_3700_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mvebu.c_ahci_mvebu_armada_3700_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64 }

@AHCI_VENDOR_SPECIFIC_0_ADDR = common dso_local global i64 0, align 8
@AHCI_VENDOR_SPECIFIC_0_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @ahci_mvebu_armada_3700_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_mvebu_armada_3700_config(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  %4 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AHCI_VENDOR_SPECIFIC_0_ADDR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 0, i64 %8)
  %10 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AHCI_VENDOR_SPECIFIC_0_DATA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = call i32 @BIT(i32 6)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AHCI_VENDOR_SPECIFIC_0_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
