; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_sata_phys_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_sata_phys_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_ahci_priv = type { i32 }

@SATA_TOP_MAX_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcm_ahci_priv*)* @brcm_sata_phys_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcm_sata_phys_enable(%struct.brcm_ahci_priv* %0) #0 {
  %2 = alloca %struct.brcm_ahci_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.brcm_ahci_priv* %0, %struct.brcm_ahci_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SATA_TOP_MAX_PHYS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %2, align 8
  %10 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @brcm_sata_phy_enable(%struct.brcm_ahci_priv* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcm_sata_phy_enable(%struct.brcm_ahci_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
