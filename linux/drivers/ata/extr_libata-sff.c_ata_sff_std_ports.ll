; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_std_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_std_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ioports = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_REG_DATA = common dso_local global i64 0, align 8
@ATA_REG_ERR = common dso_local global i64 0, align 8
@ATA_REG_FEATURE = common dso_local global i64 0, align 8
@ATA_REG_NSECT = common dso_local global i64 0, align 8
@ATA_REG_LBAL = common dso_local global i64 0, align 8
@ATA_REG_LBAM = common dso_local global i64 0, align 8
@ATA_REG_LBAH = common dso_local global i64 0, align 8
@ATA_REG_DEVICE = common dso_local global i64 0, align 8
@ATA_REG_STATUS = common dso_local global i64 0, align 8
@ATA_REG_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_std_ports(%struct.ata_ioports* %0) #0 {
  %2 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_ioports* %0, %struct.ata_ioports** %2, align 8
  %3 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %4 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ATA_REG_DATA, align 8
  %7 = add nsw i64 %5, %6
  %8 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %9 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %8, i32 0, i32 10
  store i64 %7, i64* %9, align 8
  %10 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %11 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATA_REG_ERR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %16 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %15, i32 0, i32 9
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %18 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATA_REG_FEATURE, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %23 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %22, i32 0, i32 8
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %25 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATA_REG_NSECT, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %30 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %29, i32 0, i32 7
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %32 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ATA_REG_LBAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %37 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATA_REG_LBAM, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %44 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %46 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATA_REG_LBAH, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %51 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %53 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATA_REG_DEVICE, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %58 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %60 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATA_REG_STATUS, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %65 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %67 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ATA_REG_CMD, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %72 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
