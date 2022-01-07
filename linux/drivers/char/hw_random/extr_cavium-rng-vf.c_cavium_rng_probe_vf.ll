; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_cavium-rng-vf.c_cavium_rng_probe_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_cavium-rng-vf.c_cavium_rng_probe_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cavium_rng = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error iomap failed retrieving result.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cavium-rng-%s\00", align 1
@cavium_rng_read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error registering device as HWRNG.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cavium_rng_probe_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cavium_rng_probe_vf(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cavium_rng*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cavium_rng* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.cavium_rng* %11, %struct.cavium_rng** %6, align 8
  %12 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %13 = icmp ne %struct.cavium_rng* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pcim_iomap(%struct.pci_dev* %18, i32 0, i32 0)
  %20 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %21 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %23 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %17
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_name(i32* %37)
  %39 = call i32 @devm_kasprintf(i32* %34, i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %41 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %44 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %32
  %52 = load i32, i32* @cavium_rng_read, align 4
  %53 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %54 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %57 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1000, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %61 = call i32 @pci_set_drvdata(%struct.pci_dev* %59, %struct.cavium_rng* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.cavium_rng*, %struct.cavium_rng** %6, align 8
  %65 = getelementptr inbounds %struct.cavium_rng, %struct.cavium_rng* %64, i32 0, i32 0
  %66 = call i32 @devm_hwrng_register(i32* %63, %struct.TYPE_2__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %69, %48, %26, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.cavium_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cavium_rng*) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
