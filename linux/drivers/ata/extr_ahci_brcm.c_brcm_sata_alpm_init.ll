; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_sata_alpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_sata_alpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64, i32, %struct.brcm_ahci_priv* }
%struct.brcm_ahci_priv = type { i32 }

@HOST_CAP = common dso_local global i64 0, align 8
@HOST_CAP_ALPM = common dso_local global i32 0, align 4
@AHCI_HFLAG_YES_ALPM = common dso_local global i32 0, align 4
@SATA_FIRST_PORT_CTRL = common dso_local global i32 0, align 4
@SATA_TOP_MAX_PHYS = common dso_local global i32 0, align 4
@SATA_NEXT_PORT_CTRL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_host_priv*)* @brcm_sata_alpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcm_sata_alpm_init(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca %struct.brcm_ahci_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  %7 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %7, i32 0, i32 2
  %9 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %8, align 8
  store %struct.brcm_ahci_priv* %9, %struct.brcm_ahci_priv** %3, align 8
  %10 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HOST_CAP, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HOST_CAP_ALPM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @AHCI_HFLAG_YES_ALPM, align 4
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %1
  store i32 0, i32* %6, align 4
  %27 = load i32, i32* @SATA_FIRST_PORT_CTRL, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SATA_TOP_MAX_PHYS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %3, align 8
  %34 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %42 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @SATA_PORT_PCTRL6(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writel(i32 -15727620, i64 %46)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* @SATA_NEXT_PORT_CTRL_OFFSET, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %28

57:                                               ; preds = %28
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @SATA_PORT_PCTRL6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
