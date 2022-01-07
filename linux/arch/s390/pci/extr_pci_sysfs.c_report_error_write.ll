; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_sysfs.c_report_error_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_sysfs.c_report_error_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.zpci_report_error_header = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.zpci_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @report_error_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_error_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.zpci_report_error_header*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca %struct.zpci_dev*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.zpci_report_error_header*
  store %struct.zpci_report_error_header* %20, %struct.zpci_report_error_header** %14, align 8
  %21 = load %struct.kobject*, %struct.kobject** %9, align 8
  %22 = call %struct.device* @kobj_to_dev(%struct.kobject* %21)
  store %struct.device* %22, %struct.device** %15, align 8
  %23 = load %struct.device*, %struct.device** %15, align 8
  %24 = call %struct.pci_dev* @to_pci_dev(%struct.device* %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %16, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %26 = call %struct.zpci_dev* @to_zpci(%struct.pci_dev* %25)
  store %struct.zpci_dev* %26, %struct.zpci_dev** %17, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %13, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %54

35:                                               ; preds = %29
  %36 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %14, align 8
  %37 = load %struct.zpci_dev*, %struct.zpci_dev** %17, align 8
  %38 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %17, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sclp_pci_report(%struct.zpci_report_error_header* %36, i32 %39, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  br label %51

49:                                               ; preds = %35
  %50 = load i64, i64* %13, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %32
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.zpci_dev* @to_zpci(%struct.pci_dev*) #1

declare dso_local i32 @sclp_pci_report(%struct.zpci_report_error_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
