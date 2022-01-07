; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c_pata_platform_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c_pata_platform_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ioports = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ATA_REG_DATA = common dso_local global i32 0, align 4
@ATA_REG_ERR = common dso_local global i32 0, align 4
@ATA_REG_FEATURE = common dso_local global i32 0, align 4
@ATA_REG_NSECT = common dso_local global i32 0, align 4
@ATA_REG_LBAL = common dso_local global i32 0, align 4
@ATA_REG_LBAM = common dso_local global i32 0, align 4
@ATA_REG_LBAH = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_STATUS = common dso_local global i32 0, align 4
@ATA_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_ioports*, i32)* @pata_platform_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_platform_setup_port(%struct.ata_ioports* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_ioports*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_ioports* %0, %struct.ata_ioports** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %6 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @ATA_REG_DATA, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %8, %9
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %7, %11
  %13 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %14 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %13, i32 0, i32 10
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %16 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ATA_REG_ERR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %24 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %23, i32 0, i32 9
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %26 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ATA_REG_FEATURE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %34 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %36 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ATA_REG_NSECT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %44 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %46 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ATA_REG_LBAL, align 4
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %54 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %56 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @ATA_REG_LBAM, align 4
  %59 = load i32, i32* %4, align 4
  %60 = shl i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %64 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %66 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ATA_REG_LBAH, align 4
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %74 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %76 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ATA_REG_DEVICE, align 4
  %79 = load i32, i32* %4, align 4
  %80 = shl i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %84 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %86 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ATA_REG_STATUS, align 4
  %89 = load i32, i32* %4, align 4
  %90 = shl i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %94 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %96 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @ATA_REG_CMD, align 4
  %99 = load i32, i32* %4, align 4
  %100 = shl i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %104 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
