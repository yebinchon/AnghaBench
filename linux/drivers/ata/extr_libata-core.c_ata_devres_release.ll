; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_devres_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_devres_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @ata_devres_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_devres_release(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ata_host* @dev_get_drvdata(%struct.device* %8)
  store %struct.ata_host* %9, %struct.ata_host** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 1
  %19 = load %struct.ata_port**, %struct.ata_port*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %19, i64 %21
  %23 = load %struct.ata_port*, %struct.ata_port** %22, align 8
  store %struct.ata_port* %23, %struct.ata_port** %7, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %25 = icmp ne %struct.ata_port* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @scsi_host_put(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_set_drvdata(%struct.device* %42, i32* null)
  %44 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %45 = call i32 @ata_host_put(%struct.ata_host* %44)
  ret void
}

declare dso_local %struct.ata_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scsi_host_put(i64) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @ata_host_put(%struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
