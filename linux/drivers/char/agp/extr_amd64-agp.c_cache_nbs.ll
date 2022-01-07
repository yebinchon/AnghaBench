; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_cache_nbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_cache_nbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no usable aperture found\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"consider rebooting with iommu=memaper=2 to get a good aperture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @cache_nbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_nbs(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 (...) @amd_cache_northbridges()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load i32, i32* @AMD_NB_GART, align 4
  %15 = call i32 @amd_nb_has_feature(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (...) @amd_nb_num()
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %7, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @fix_northbridge(%struct.pci_dev* %30, %struct.pci_dev* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %47

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %21

46:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %35, %17, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @amd_cache_northbridges(...) #1

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local i64 @fix_northbridge(%struct.pci_dev*, %struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
