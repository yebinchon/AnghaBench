; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_pe_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_sysfs.c_eeh_pe_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }
%struct.eeh_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@EEH_PE_ISOLATED = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @eeh_pe_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeh_pe_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.eeh_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %15 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %14)
  store %struct.eeh_dev* %15, %struct.eeh_dev** %11, align 8
  %16 = load %struct.eeh_dev*, %struct.eeh_dev** %11, align 8
  %17 = icmp ne %struct.eeh_dev* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.eeh_dev*, %struct.eeh_dev** %11, align 8
  %20 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %4
  %24 = load i64, i64* @ENODEV, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %53

26:                                               ; preds = %18
  %27 = load %struct.eeh_dev*, %struct.eeh_dev** %11, align 8
  %28 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EEH_PE_ISOLATED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %53

37:                                               ; preds = %26
  %38 = load %struct.eeh_dev*, %struct.eeh_dev** %11, align 8
  %39 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i64 @eeh_unfreeze_pe(%struct.TYPE_3__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @EIO, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.eeh_dev*, %struct.eeh_dev** %11, align 8
  %48 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @EEH_PE_ISOLATED, align 4
  %51 = call i32 @eeh_pe_state_clear(%struct.TYPE_3__* %49, i32 %50, i32 1)
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %46, %43, %35, %23
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i64 @eeh_unfreeze_pe(%struct.TYPE_3__*) #1

declare dso_local i32 @eeh_pe_state_clear(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
