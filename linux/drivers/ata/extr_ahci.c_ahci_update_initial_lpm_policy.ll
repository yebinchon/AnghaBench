; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_update_initial_lpm_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_update_initial_lpm_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ata_port = type { i32 }
%struct.ahci_host_priv = type { i32, i32 }

@CONFIG_SATA_MOBILE_LPM_POLICY = common dso_local global i32 0, align 4
@AHCI_HFLAG_IS_MOBILE = common dso_local global i32 0, align 4
@mobile_lpm_policy = common dso_local global i32 0, align 4
@ATA_LPM_UNKNOWN = common dso_local global i32 0, align 4
@ATA_LPM_MIN_POWER = common dso_local global i32 0, align 4
@ACPI_FADT_LOW_POWER_S0 = common dso_local global i32 0, align 4
@ATA_LPM_MED_POWER = common dso_local global i32 0, align 4
@ATA_LPM_MIN_POWER_WITH_PARTIAL = common dso_local global i32 0, align 4
@HOST_CAP_PART = common dso_local global i32 0, align 4
@HOST_CAP_SSC = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ahci_host_priv*)* @ahci_update_initial_lpm_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_update_initial_lpm_policy(%struct.ata_port* %0, %struct.ahci_host_priv* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ahci_host_priv* %1, %struct.ahci_host_priv** %4, align 8
  %6 = load i32, i32* @CONFIG_SATA_MOBILE_LPM_POLICY, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHCI_HFLAG_IS_MOBILE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load i32, i32* @mobile_lpm_policy, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @mobile_lpm_policy, align 4
  store i32 %18, i32* %5, align 4
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ATA_LPM_UNKNOWN, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ATA_LPM_MIN_POWER, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %13, %28, %24, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
