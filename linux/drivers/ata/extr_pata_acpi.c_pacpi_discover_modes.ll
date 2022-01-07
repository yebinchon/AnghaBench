; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_discover_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_discover_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.pata_acpi* }
%struct.pata_acpi = type { %struct.ata_acpi_gtm }
%struct.ata_acpi_gtm = type { i32 }
%struct.ata_device = type { i32 }

@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_port*, %struct.ata_device*)* @pacpi_discover_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pacpi_discover_modes(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pata_acpi*, align 8
  %6 = alloca %struct.ata_acpi_gtm, align 4
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.pata_acpi*, %struct.pata_acpi** %9, align 8
  store %struct.pata_acpi* %10, %struct.pata_acpi** %5, align 8
  %11 = load %struct.pata_acpi*, %struct.pata_acpi** %5, align 8
  %12 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %11, i32 0, i32 0
  %13 = bitcast %struct.ata_acpi_gtm* %6 to i8*
  %14 = bitcast %struct.ata_acpi_gtm* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = call i32 @ata_acpi_gtm(%struct.ata_port* %15, %struct.ata_acpi_gtm* %6)
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = call i32 @ata_acpi_gtm_xfermask(%struct.ata_device* %17, %struct.ata_acpi_gtm* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %21 = shl i32 248, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @ATA_CBL_PATA80, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  ret i64 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ata_acpi_gtm(%struct.ata_port*, %struct.ata_acpi_gtm*) #2

declare dso_local i32 @ata_acpi_gtm_xfermask(%struct.ata_device*, %struct.ata_acpi_gtm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
