; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_setup_port.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_ioports*)* @pata_imx_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_imx_setup_port(%struct.ata_ioports* %0) #0 {
  %2 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_ioports* %0, %struct.ata_ioports** %2, align 8
  %3 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %4 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @ATA_REG_DATA, align 4
  %7 = shl i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %11 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %10, i32 0, i32 10
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %13 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ATA_REG_ERR, align 4
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %20 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %19, i32 0, i32 9
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %22 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @ATA_REG_FEATURE, align 4
  %25 = shl i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %29 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %28, i32 0, i32 8
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %31 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ATA_REG_NSECT, align 4
  %34 = shl i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %38 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %37, i32 0, i32 7
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %40 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @ATA_REG_LBAL, align 4
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %47 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %49 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ATA_REG_LBAM, align 4
  %52 = shl i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %56 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %58 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ATA_REG_LBAH, align 4
  %61 = shl i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %65 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %67 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @ATA_REG_DEVICE, align 4
  %70 = shl i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %74 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %76 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ATA_REG_STATUS, align 4
  %79 = shl i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %83 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %85 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @ATA_REG_CMD, align 4
  %88 = shl i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = load %struct.ata_ioports*, %struct.ata_ioports** %2, align 8
  %92 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
