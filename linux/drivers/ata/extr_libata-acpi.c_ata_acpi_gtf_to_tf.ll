; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtf_to_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtf_to_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_acpi_gtf = type { i32* }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*, %struct.ata_acpi_gtf*, %struct.ata_taskfile*)* @ata_acpi_gtf_to_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_acpi_gtf_to_tf(%struct.ata_device* %0, %struct.ata_acpi_gtf* %1, %struct.ata_taskfile* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_acpi_gtf*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store %struct.ata_acpi_gtf* %1, %struct.ata_acpi_gtf** %5, align 8
  store %struct.ata_taskfile* %2, %struct.ata_taskfile** %6, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %8 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %9 = call i32 @ata_tf_init(%struct.ata_device* %7, %struct.ata_taskfile* %8)
  %10 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %11 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @ATA_PROT_NODATA, align 4
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %21 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %28 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %33 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %35 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %40 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %42 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %49 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %56 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %5, align 8
  %63 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %68 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
