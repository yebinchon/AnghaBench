; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_handle_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_handle_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SATA_AUX_MISC_CNTL_1_0 = common dso_local global i64 0, align 8
@SATA_AUX_MISC_CNTL_1_0_SDS_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_host_priv*)* @tegra_ahci_handle_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_ahci_handle_quirks(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca %struct.tegra_ahci_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  %5 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %5, i32 0, i32 0
  %7 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %6, align 8
  store %struct.tegra_ahci_priv* %7, %struct.tegra_ahci_priv** %3, align 8
  %8 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %12
  %20 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SATA_AUX_MISC_CNTL_1_0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @SATA_AUX_MISC_CNTL_1_0_SDS_SUPPORT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SATA_AUX_MISC_CNTL_1_0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %19, %12, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
