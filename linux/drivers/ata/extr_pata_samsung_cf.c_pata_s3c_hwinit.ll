; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_hwinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_ide_info = type { i32, i64, i32 }
%struct.s3c_ide_platdata = type { i32 }

@S3C_ATA_IRQ = common dso_local global i64 0, align 8
@S3C_ATA_IRQ_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_ide_info*, %struct.s3c_ide_platdata*)* @pata_s3c_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_s3c_hwinit(%struct.s3c_ide_info* %0, %struct.s3c_ide_platdata* %1) #0 {
  %3 = alloca %struct.s3c_ide_info*, align 8
  %4 = alloca %struct.s3c_ide_platdata*, align 8
  store %struct.s3c_ide_info* %0, %struct.s3c_ide_info** %3, align 8
  store %struct.s3c_ide_platdata* %1, %struct.s3c_ide_platdata** %4, align 8
  %5 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %6 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %56 [
    i32 129, label %8
    i32 128, label %34
  ]

8:                                                ; preds = %2
  %9 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %10 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pata_s3c_cfg_mode(i32 %11)
  %13 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %14 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pata_s3c_set_endian(i64 %15, i32 1)
  %17 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %18 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pata_s3c_enable(i64 %19, i32 1)
  %21 = call i32 @msleep(i32 100)
  %22 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %23 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S3C_ATA_IRQ, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 31, i64 %26)
  %28 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %29 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S3C_ATA_IRQ_MSK, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 27, i64 %32)
  br label %58

34:                                               ; preds = %2
  %35 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %36 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pata_s3c_set_endian(i64 %37, i32 0)
  %39 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %40 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pata_s3c_enable(i64 %41, i32 1)
  %43 = call i32 @msleep(i32 100)
  %44 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %45 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @S3C_ATA_IRQ, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 63, i64 %48)
  %50 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %3, align 8
  %51 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S3C_ATA_IRQ_MSK, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 63, i64 %54)
  br label %58

56:                                               ; preds = %2
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %56, %34, %8
  ret void
}

declare dso_local i32 @pata_s3c_cfg_mode(i32) #1

declare dso_local i32 @pata_s3c_set_endian(i64, i32) #1

declare dso_local i32 @pata_s3c_enable(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
