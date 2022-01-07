; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_setup_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_setup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_ide_info = type { i32 }
%struct.ata_timing = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.s3c_ide_info*, %struct.ata_timing*)* @pata_s3c_setup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pata_s3c_setup_timing(%struct.s3c_ide_info* %0, %struct.ata_timing* %1) #0 {
  %3 = alloca %struct.s3c_ide_info*, align 8
  %4 = alloca %struct.ata_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.s3c_ide_info* %0, %struct.s3c_ide_info** %3, align 8
  store %struct.ata_timing* %1, %struct.ata_timing** %4, align 8
  %9 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %10 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %13 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %16 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 12
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = shl i32 %22, 4
  %24 = or i32 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 15
  %27 = or i32 %24, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
