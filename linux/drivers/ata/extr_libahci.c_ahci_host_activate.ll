; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_host_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_host_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32, i32, i64, i32 }
%struct.scsi_host_template = type { i32 }

@AHCI_HFLAG_MULTI_MSI = common dso_local global i32 0, align 4
@ahci_single_level_irq_intr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"both AHCI_HFLAG_MULTI_MSI flag set and custom irq handler implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"AHCI_HFLAG_MULTI_MSI requires ->get_irq_vector!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_host_activate(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  %9 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %10 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %9, i32 0, i32 1
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %10, align 8
  store %struct.ahci_host_priv* %11, %struct.ahci_host_priv** %6, align 8
  %12 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AHCI_HFLAG_MULTI_MSI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %2
  %22 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ahci_single_level_irq_intr, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %34 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %26, %21
  %38 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %44 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %37
  %50 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %51 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %52 = call i32 @ahci_host_activate_multi_irqs(%struct.ata_host* %50, %struct.scsi_host_template* %51)
  store i32 %52, i32* %8, align 4
  br label %62

53:                                               ; preds = %2
  %54 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @IRQF_SHARED, align 4
  %60 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %61 = call i32 @ata_host_activate(%struct.ata_host* %54, i32 %55, i64 %58, i32 %59, %struct.scsi_host_template* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %49
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %42
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ahci_host_activate_multi_irqs(%struct.ata_host*, %struct.scsi_host_template*) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i64, i32, %struct.scsi_host_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
