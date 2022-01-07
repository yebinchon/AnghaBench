; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_find_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_find_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i8*, i32 }
%struct.pci_dev = type { i32 }
%struct.acpi_device = type { i32 }

@find_video.video_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { i8* inttoptr (i64 128 to i8*), i32 0 }, %struct.acpi_device_id { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 0 }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @find_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_video(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @acpi_bus_get_device(i32 %15, %struct.acpi_device** %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %22 = call i32 @acpi_match_device_ids(%struct.acpi_device* %21, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @find_video.video_ids, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %11, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @AE_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %33 = call i32 @pci_dev_put(%struct.pci_dev* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @acpi_is_video_device(i32 %34)
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %35
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %31, %20
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %29, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #1

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @acpi_is_video_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
