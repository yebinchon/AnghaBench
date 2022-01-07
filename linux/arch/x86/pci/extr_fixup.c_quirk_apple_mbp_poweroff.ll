; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_quirk_apple_mbp_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_quirk_apple_mbp_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MacBookPro11,4\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MacBookPro11,5\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"MacBook Pro poweroff workaround\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"claimed %s %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"can't work around MacBook Pro poweroff issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_apple_mbp_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_apple_mbp_poweroff(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %8 = call i32 @dmi_match(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %12 = call i32 @dmi_match(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10, %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @PCI_DEVFN(i32 28, i32 0)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %14, %10
  br label %42

28:                                               ; preds = %21
  %29 = call %struct.resource* @request_mem_region(i32 2141192192, i32 2097152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %29, %struct.resource** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %36, %struct.resource* %37)
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %27, %39, %32
  ret void
}

declare dso_local i32 @dmi_match(i32, i8*) #1

declare dso_local i64 @PCI_DEVFN(i32, i32) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
