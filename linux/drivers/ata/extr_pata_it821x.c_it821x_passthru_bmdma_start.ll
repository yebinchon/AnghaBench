; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_passthru_bmdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it821x.c_it821x_passthru_bmdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i32 }
%struct.ata_port = type { %struct.it821x_dev* }
%struct.it821x_dev = type { i64*, i64*, i64 }

@MWDMA_OFF = common dso_local global i64 0, align 8
@UDMA_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @it821x_passthru_bmdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_passthru_bmdma_start(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.it821x_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 0
  %12 = load %struct.ata_device*, %struct.ata_device** %11, align 8
  store %struct.ata_device* %12, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.it821x_dev*, %struct.it821x_dev** %14, align 8
  store %struct.it821x_dev* %15, %struct.it821x_dev** %5, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %20 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MWDMA_OFF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %31 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %32 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @it821x_program(%struct.ata_port* %29, %struct.ata_device* %30, i64 %37)
  br label %66

39:                                               ; preds = %1
  %40 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %41 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UDMA_OFF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %51 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %56 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %57 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %58 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @it821x_program_udma(%struct.ata_port* %55, %struct.ata_device* %56, i64 %63)
  br label %65

65:                                               ; preds = %54, %49, %39
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %68 = call i32 @ata_bmdma_start(%struct.ata_queued_cmd* %67)
  ret void
}

declare dso_local i32 @it821x_program(%struct.ata_port*, %struct.ata_device*, i64) #1

declare dso_local i32 @it821x_program_udma(%struct.ata_port*, %struct.ata_device*, i64) #1

declare dso_local i32 @ata_bmdma_start(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
