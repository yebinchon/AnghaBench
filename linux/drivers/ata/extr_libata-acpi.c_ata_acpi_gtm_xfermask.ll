; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm_xfermask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm_xfermask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_acpi_gtm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ATA_SHIFT_PIO = common dso_local global i32 0, align 4
@ATA_SHIFT_MWDMA = common dso_local global i32 0, align 4
@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ata_acpi_gtm_xfermask(%struct.ata_device* %0, %struct.ata_acpi_gtm* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_acpi_gtm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store %struct.ata_acpi_gtm* %1, %struct.ata_acpi_gtm** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %4, align 8
  %13 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 16
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @ATA_SHIFT_PIO, align 4
  %20 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %4, align 8
  %21 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ata_timing_cycle2mode(i32 %19, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @ata_xfer_mode2mask(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %4, align 8
  %34 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 2, %36
  %38 = shl i32 1, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %18
  %42 = load i32, i32* @ATA_SHIFT_MWDMA, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %18
  %44 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %4, align 8
  %48 = getelementptr inbounds %struct.ata_acpi_gtm, %struct.ata_acpi_gtm* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ata_timing_cycle2mode(i32 %46, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @ata_xfer_mode2mask(i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @ata_timing_cycle2mode(i32, i32) #1

declare dso_local i64 @ata_xfer_mode2mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
